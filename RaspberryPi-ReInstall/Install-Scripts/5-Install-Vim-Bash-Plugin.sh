#!/bin/bash

#wget=/usr/bin/wget
#WGET_OPTS='-O'
#URL_BASE='http://www.vim.org/scripts/download_script.php?src_id=9890'
WORKING_DIR='/usr/src'
TARGET_DIR='/home/brettsalemink/.vim'
FILE_NAME='bash-support.zip'

# First Install Pathogen
DIRECTORY=/home/brettsalemink/.vim
echo "Preparing to delete directory $HOME/.vim to install Pathogen, please select (Y/n) to proceed:"

read PROCEED

case $PROCEED in	
	n)
	exit 0	;;

	N)
	exit 0	;;

	Y)
	sudo rm -r ~/.vim
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim ;;

	*)
	sudo rm -r ~/.vim
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim ;;
	
esac    # --- end of case ---

sudo rm ~/.vimrc
touch ~/.vimrc
echo "execute pathogen#infect()" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "filetype plugin indent on" >> ~/.vimrc

echo "Finished Installing Pathogen."

echo "Commencing Installation of Vim-Bash-Support"

cd ~/.vim/bundle
git clone https://github.com/vim-scripts/bash-support.vim

echo "The script will now make a backup file of the base template and you will have to customize the file. It is located at $HOME/.vim/bundle/bash-support.vim/bash-support/templates/Template"

echo "Are you ready to proceed (Y/n)?"
read PROCEED2


case $PROCEED2 in
	n)
	exit 0	;;

	N)
	exit 0	;;

	Y)
	cp ~/.vim/bundle/bash-support.vim/bash-support/templates/Template ~/.vim/bundle/bash-support.vim/bash-support/templates/Template.backup	;;

	Y)
	cp ~/.vim/bundle/bash-support.vim/bash-support/templates/Template ~/.vim/bundle/bash-support.vim/bash-support/templates/Template.backup	;;
	
esac    # --- end of case ---

echo "Installation of both Pathogen and Vim-Bash is complete."

exit 0
