#!/bin/bash  
#====================================================
#
#          FILE: 18-Install-Axel.sh
# 
#         USAGE: ./18-Install-Axel.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 12/22/2018 05:36
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	sudo apt-get install axel -y
	wait
	sudo cp $HOME/bin/files/etc/axelrc /etc
	wait
}	# end Main

Main

#===EXIT===
exit 0

