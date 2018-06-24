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
# Include Lib
#. ~/lib/sh/funcOS.sh

# Use Function
#funcOS

echo 'Which OS are you using 1. Debian based or 2. Arch based? (1 or 2)'



read RESULT

case $RESULT in
	
	"1")  
	echo "Installing For Debian/Based"    
	sudo apt-get install git 
	git config --global user.name "stiles69"
	git config --global user.email "brett.salemink@gmail.com"
	git config --global core.editor "vim"
	;;

	"2")  
	echo "Installing For Arch/Based"    
	sudo pacman -S git
	git config --global user.name "stiles69"
	git config --global user.email "brett.salemink@gmail.com"
	git config --global core.editor "vim"
	;;
	
	*)
	echo 'Please use 1 or 2'
	exit
	;;
esac

exit 0

