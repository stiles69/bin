#!/bin/bash  
#====================================================
#
#          FILE: Update-All-Vim-In-Files-Install.sh
# 
#         USAGE: ./Update-All-Vim-In-Files-Install.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/23/2018 00:17
#      REVISION:  ---
#====================================================
set -e #Needed for sleep
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
VIMDIR=$HOME/bin/files/home/brettsalemink/.vim
VIMBUNDLEDIR="$VIMDIR/bundle"
VIMRCDIR=$HOME/bin/files/home/brettsalemink
VIMRC="$VIMRCDIR/.vimrc"
RASPBIANCONFIGDIR="/mnt/Data/Images/Raspbian/Config"
SLAVE1DIR="$RASPBIANCONFIGDIR/slave1"
SLAVE1HOMEDIR="$SLAVE1DIR/home/brettsalemink"
SLAVE1VIMDIR="$SLAVE1HOMEDIR/.vim"
BASHSUPPORTDIR="$HOME/bin/files/bash-support"
BASHSUPPORTTEMPLATES="$BASHSUPPORTDIR/Templates"
BASHSUPPORTSH="$BASHSUPPORTDIR/sh.vim"
#-------------------------------------
function Main ()
{
	sudo rm -r "$VIMDIR"


	# Bash Pathogen	
	echo "Installing Pathogen"
	mkdir -p "$VIMDIR/autoload" "$VIMDIR/bundle"
	curl -LSso "$VIMDIR/autoload/pathogen.vim" https://tpo.pe/pathogen.vim

	echo "execute pathogen#infect()" > "$VIMRC"
	echo "syntax on" >> "$VIMRC"
	echo "set number" >> "$VIMRC"
	echo "filetype plugin indent on" >> "$VIMRC"
	echo "Completed Installing Pathogen"

	# Vim Bash Support
	echo "Installing Vim Bash Support"
	cd "$VIMBUNDLEDIR"
	git clone https://github.com/vim-scripts/bash-support.vim
	cp "$BASHSUPPORTTEMPLATES" "$VIMBUNDLEDIR/bash-support.vim/bash-support/templates/"
	cp "$BASHSUPPORTSH" "$VIMBUNDLEDIR/bash-support.vim/bash-support/rc/"
	echo "Completed Installing Vim Bash Support"

	# Vim CSS
	echo "Installing Vim CSS"
	cd "$VIMBUNDLEDIR"
	git clone https://github.com/juleswang/css.vim
	echo "Completed Installing Vim CSS"
	
	# Vim Dockerfile
	echo "Installing Vim Dockerfile"
	cd "$VIMBUNDLEDIR"
	git clone https://github.com/ekalinin/dockerfile.vim
	echo "Completed Installing Vim Dockerfile"
	
	# Vim HTML5
	echo "Installing Vim HTML5"
	cd "$VIMBUNDLEDIR"
	git clone https://github.com/othree/html5.vim
	echo "Completed Installing Vim HTML5"

	# Vim JSLibraries
	echo "Installing Vim JSLibraries"
	cd "$VIMBUNDLEDIR"
	git clone https://github.com/othree/javascript-libraries-syntax.vim
	echo "Completed Installing Vim JSLibraries"
	
	# Vim Stylus
	echo "Installing Vim Stylus"
	cd "$VIMBUNDLEDIR"
	git clone https://github.com/wavded/vim-stylus
	echo "Completed Installing Vim Stylus"

	# Vim Support
	echo "Installing Vim Support"
	cd "$VIMBUNDLEDIR"
	git clone https://github.com/vim-scripts/Vim-Support
	echo "Completed Installing Vim Support"

	# Vim Vue
	echo "Installing Vim Vue"
	cd "$VIMBUNDLEDIR"
	git clone https://github.com/posva/vim-vue
	echo "Completed Installing Vim Vue"

	# Vim GoLang
	echo "Installing Vim GoLang"
	cd "$VIMBUNDLEDIR"
	git clone https://github.com/fatih/vim-go
	echo "Completed Installing Vim GoLang"

	# Vim Python Syntax
	echo "Installing Vim Python Syntax"
	cd "$VIMBUNDLEDIR"
	git clone https://github.com/hdima/python-syntax
	echo "Completed Installing Vim Python Syntax"

	# Clear Old Vim Config
	sudo rm -r "$SLAVE1VIMDIR"

	# Make New Vim Config
	mkdir "$SLAVE1VIMDIR"

	# Copy to Config
	echo "Copying New Config to Raspbian Config Slave1"
	cp -r "$VIMDIR" "$SLAVE1HOMEDIR/"
	cp "$VIMRC" "$SLAVE1HOMEDIR/"
	echo "Completed Copying New Config to Raspbian Config Slave1"
}	# end Main

Main

#===EXIT===
exit 0
