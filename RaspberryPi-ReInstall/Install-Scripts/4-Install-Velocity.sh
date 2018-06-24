#!/bin/bash  
#===============================================================================
#
#          FILE: Install-Terminal_Velocity.sh
# 
#         USAGE: ./Install-Terminal_Velocity.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 06:32
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
	sudo apt-get install python-pip
    	wait
	sudo pip install terminal_velocity	
	;;

	"Raspbian GNU/Linux")  
	echo "Installing For Debian/Based"    
	sudo apt-get install python-pip
    	wait
	sudo pip install terminal_velocity	
	;;

	"Antergos Linux")  
	echo "Installing For Arch/Based"    
	sudo pacman -S python-pip
	wait
	sudo pip install terminal_velocity
	;;
	
	*)
	echo 'No match can not install'
	exit
	;;
esac
# Exit
exit 0 



