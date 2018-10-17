#!/bin/bash  
#====================================================
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
#====================================================
set -o nounset                              # Treat unset variables as an error

function InstallerVimDeb ()
{
	sudo apt-get install vim
}	

function InstallerVimBashSupport ()
{
	sudo rm -r ~/.vim
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	sudo rm ~/.vimrc
	touch ~/.vimrc
	echo "execute pathogen#infect()" >> ~/.vimrc
	echo "syntax on" >> ~/.vimrc
	echo "set number" >> ~/.vimrc
	echo "filetype plugin indent on" >> ~/.vimrc
	echo "Finished Installing Pathogen."
	echo "Commencing Installation of Vim-Bash-Support"
	cd ~/.vim/bundle
	git clone https://github.com/vim-scripts/bash-support.vim	
	cp ~/bin/files/bash-support/Templates $HOME/.vim/bundle/bash-support.vim/bash-support/templates/	
	echo "Installation of both Pathogen and Vim-Bash is complete."
} 	

function Main ()
{
	InstallerVimDeb
	wait
	InstallerVimBashSupport
	wait
}	

Main

#=== Exit ===
exit 0
