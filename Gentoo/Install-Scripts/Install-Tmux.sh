#!/bin/bash  
#===============================================================================
#
#          FILE: Install-Tmux.sh
# 
#         USAGE: ./Install-Tmux.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 08:38
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

echo 'Which OS are you using 1. Debian based or 2. Arch based? (1 or 2)'
read RESULT

case $RESULT in
	
	"1")  
	echo "Installing For Debian/Based"    
	sudo apt-get install tmux -y 
	;;

	"2")  
	echo "Installing For Arch/Based"    
	sudo pacman -S tmux
	;;
	
	*)
	echo 'Please use 1 or 2'
	exit
	;;
esac

echo 'Tmux installed'

exit 0


