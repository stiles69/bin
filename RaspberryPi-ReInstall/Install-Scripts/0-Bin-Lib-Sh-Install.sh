#!/bin/bash
#===============================================================================
#
#          FILE:  0-Bin-Install.sh
# 
#         USAGE:  ./0-Bin-Install.sh 
# 
#   DESCRIPTION:  This installs git and clones bin.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  06/20/2018 08:30:04 AM CDT
#      REVISION:  ---
#===============================================================================
echo 'This will install git and then pull down bin and sh. Do you want to proceed? (Y/n)'

read PROCEED

case $PROCEED in
	
	"Y" | "y")
	sudo apt-get install git
	git config --global user.name "stiles69"
	git config --global user.email "brett.salemink@gmail.com"
	git config --global core.editor "vim"
	sudo apt-get install vim
	;;

	"N" | "n")
	exit 0

	*)
	sudo apt-get install git
	git config --global user.name "stiles69"
	git config --global user.email "brett.salemink@gmail.com"
	git config --global core.editor "vim"
	sudo apt-get install vim
	;;

esac


cd ~/

echo "Installing bin directory"
git clone https://github.com/stiles69/bin.git

echo "Installing lib/sh directory"
mkdir ~/lib

cd ~/lib
git clone git@github.com:stiles69/sh.git

cp ~/bin/RaspberryPi-ReInstall/Files/home/brettsalemink/.zshrc ~/

echo "Finished cloning directories"
echo "Ensure $HOME/.zshrc has correct path for directories."

exit 0

