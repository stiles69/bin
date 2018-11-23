#!/bin/bash  
#====================================================
#
#          FILE: 12-Install-Oh-My-Zsh-From-Config.sh
# 
#         USAGE: ./12-Install-Oh-My-Zsh-From-Config.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/22/2018 23:31
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
set -e # Need for sleep
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	wait
	sudo cp /boot/slave1/home/brettsalemink/.zshrc /home/brettsalemink/
	wait
	echo 'Oh My ZSH installed.'
	sleep 5

	echo "Do you want to check .zshrc? [Y/n]"
	read ANSWER

	case "$ANSWER" in
		Y|y)
		vim /home/brettsalemink/.zshrc
		;;
		N|n)
		exit 0
		;;
		*)
		vim /home/brettsalemink/.zshrc
		;;
	esac
}	# end Main

Main

#===EXIT===
exit 0
