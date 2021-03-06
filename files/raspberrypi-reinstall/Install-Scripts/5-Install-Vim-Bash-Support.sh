#!/bin/bash  
#======================================================
#
#          FILE: Extra-Install-Vim.sh
# 
#         USAGE: ./Extra-Install-Vim.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/28/2018 17:29
#      REVISION:  ---
#======================================================
set -o nounset                              # Treat unset variables as an error

function InstallerVimDeb ()
{
	sudo apt-get update -y && sudo apt-get upgrade -y
	sudo apt-get install vim
}	# End Function

function InstallerVimArch ()
{
	sudo pacman -S vim
}	# End Function

function InstallerVimGentoo ()
{
	sudo emerge vim
}	# End Function

function Proceed ()
{
	echo "This will install Vim text editor. Do you want to proceed? [Y/n]"
	read PROCEED

	case $PROCEED in
		"Y"|"y")
		WhichDistro
		;;
		"N"|"n")
		exit 0
		;;
		*)
		WhichDistro
		;;
	esac
}	# End Function

function WhichDistro ()
{
	echo "Which Distro are you installing to? [1.Debian 2.Arch 3.Gentoo]"
	read DISTRO

	case $DISTRO in
		1)
		InstallerVimDeb
		;;
		2)
		InstallerVimArch
		;;
		3)
		InstallerVimGentoo
		;;
	esac
}	# End Function

function ProceedBashSupport ()
{
		InstallerVimBashSupport
}	# End Function

function InstallerVimBashSupport ()
{
	if [ -d $HOME/.vim ] 
	then
		sudo rm -r ~/.vim
	fi
	
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	
	if [ -d $HOME/.vimrc ]
	then
		sudo rm ~/.vimrc
		touch ~/.vimrc
	fi
	
	echo "execute pathogen#infect()" >> ~/.vimrc
	echo "syntax on" >> ~/.vimrc
	echo "set number" >> ~/.vimrc
	echo "filetype plugin indent on" >> ~/.vimrc
	echo "Finished Installing Pathogen."
	echo "Commencing Installation of Vim-Bash-Support"
	cd ~/.vim/bundle
	git clone https://github.com/vim-scripts/bash-support.vim
	cp $HOME/bin/files/bash-support/Templates $HOME/.vim/bundle/bash-support.vim/bash-support/templates/
	echo "Installation of both Pathogen and Vim-Bash is complete."
} 	# End Function

function Main ()
{
#	Proceed
	ProceedBashSupport
}	# End Function

Main

#=== Exit ===
exit 0
