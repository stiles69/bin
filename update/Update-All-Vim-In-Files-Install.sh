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
set -o nounset                              # Treat unset variables as an error
set -e #Needed for sleep
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
VIMDIR=$HOME/bin/files/home/brettsalemink/.vim
VIMBUNDLEDIR="$VIMDIR/bundle"
VIMRCDIR=$HOME/bin/files/home/brettsalemink
VIMRC="$VIMRCDIR/.vimrc"
RASPBIANCONFIGDIR=/mnt/Data/Raspbian/Config
SLAVE1DIR="$RASBIANCONFIGDIR/slave1"
SLAVE1HOMEDIR="$SLAVE1DIR/home/brettsalemink"
SLAVE1VIMDIR="$SLAVE1HOME/.vim"
BASHSUPPORTDIR="$HOME/files/bash-support"
BASHSUPORTTEMPLATES="$BASHSUPPORTDIR/Templates"
#-------------------------------------
function Main ()
{
	if [ -d "$VIMDIR" ]
	then
		sudo rm -r "$VIMDIR"
	fi

	# Bash Support	
	mkdir -p "$VIMDIR/autoload" "$VIMDIR/bundle"
	curl -LSso "$VIMDIR/autoload/pathogen.vim" https://tpo.pe/pathogen.vim

	echo "execute pathogen#infect()" >> "$VIMRC"
	echo "syntax on" >> "$VIMRC"
	echo "set number" >> "$VIMRC"
	echo "filetype plugin indent on" >> "$VIMRC"

	git clone https://github.com/vim-scripts/bash-support.vim "$VIMBUNDLEDIR/"
	cp "$BASHSUPPORTTEMPLATES" "$VIMBUNDLEDIR/bash-support.vim/bash-support/templates/"

	# Vim CSS
	git clone https://github.com/juleswang/css.vim "$VIMBUNDLEDIR/"

	# Vim Dockerfile
	git clone https://github.com/ekalinin/dockerfile.vim "$VIMBUNDLEDIR/"

	# Vim HTML5
	git clone https://github.com/othree/html5.vim "$VIMBUNDLEDIR/"

	# Vim JSLibraries
	git clone https://github.com/othree/javascript-libraries-syntax.vim "$VIMBUNDLEDIR/"
	
	# Vim Stylus
	git clone https://github.com/wavded/vim-stylus "$VIMBUNDLEDIR/"

	# Vim Support
	git clone https://github.com/vim-scripts/Vim-Support "$VIMBUNDLEDIR/"

	# Vim Vue
	git clone https://github.com/posva/vim-vue "$VIMBUNDLEDIR/"

	# Vim GoLang
	git clone https://github.com/fatih/vim-go "$VIMBUNDLEDIR/"

	# Vim Python Syntax
	git clone https://github.com/hdima/python-syntax "$VIMBUNDLEDIR/"

	# Copy to Config
	cp "$VIMDIR" "$SLAVE1VIMDIR/"
	cp "$VIMRC" "$SLAVE1HOMEDIR/"
}	# end Main

Main

#===EXIT===
exit 0
