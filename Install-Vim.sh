#!/bin/bash  
#===============================================================================
#
#          FILE: Install-Vim.sh
# 
#         USAGE: ./Install-Vim.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 09:27
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
# Include Lib
. ~/lib/sh/funcOS.sh

# Use Function
#funcOS

RESULT=$(funcOS)
echo 'The result is '
echo $RESULT

case $RESULT in
	
	"Debian")  
	echo "Installing For Debian/Based"    
	sudo apt-get install vim
	;;

	"Raspbian GNU/Linux")  
	echo "Installing For Debian/Based"    
	sudo apt-get install vim
	;;

	"Antergos Linux")  
	echo "Installing For Arch/Based"    
	sudo pacman -S vim
	;;
	
	*)
	echo 'No match can not install'
	exit
	;;
esac

echo 'Do you want to install Vim Bash-Support? (Y/n)'
read PROCEED

case $PROCEED in

	"Y" | "y")
	~/bin/Install-Vim-Bash-Plugin.sh
	;;

	"N" | "n")
       	exit 0
	;;

	*)
	~/bin/Install-Vim-Bash-Plugin.sh
	;;

esac

echo 'Installation Complete'

# Exit
exit 0 




