#!/bin/bash

#wget=/usr/bin/wget
#WGET_OPTS='-O'
#URL_BASE='http://www.vim.org/scripts/download_script.php?src_id=9890'
WORKING_DIR='/usr/src'
TARGET_DIR='/home/brettsalemink/.vim'
FILE_NAME='bash-support.zip'


cd $WORKING_DIR
sudo wget -O bash-support.zip http://www.vim.org/scripts/download_script.php?src_id=9890

mkdir $TARGET_DIR # if the directory does not exist already
cd $TARGET_DIR
unzip /usr/src/$FILE_NAME

#sed -i -e '1ifiletype plugin on\' ~/.vimrc

echo "filetype plugin on" > ~/.vimrc
echo "let g:BASH_AuthorName   	= 'Brett Salemink'" >> ~/.vimrc
echo "let g:BASH_Email   	= 'brett.salemink@gmail.com'" >> ~/.vimrc
echo "let g:BASH_Company  	= 'Rogue Designs'" >> ~/.vimrc

