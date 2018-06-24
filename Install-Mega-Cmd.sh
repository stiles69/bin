#!/bin/bash  
#===============================================================================
#
#          FILE: Install-Mega-Cmd.sh
# 
#         USAGE: ./Install-Mega-Cmd.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 10:52
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
	sudo dpkg -i ~/bin/Packages/megacmd-Raspbian_9.0_armhf.deb
	;;

	"Raspbian GNU/Linux")  
	echo "Installing For Debian/Based"    
	sudo dpkg -i ~/bin/Packages/megacmd-Raspbian_9.0_armhf.deb
	;;

	"Antergos Linux")  
	echo "Installing For Arch/Based"    
	udo pip2 install terminal_velocity
	;;
	
	*)
	echo 'No match can not install'
	exit
	;;
esac
# Exit
exit 0 




