#!/bin/bash  
#====================================================
#
#          FILE: 16-Install-All-Vim-From-Boot.sh
# 
#         USAGE: ./16-Install-All-Vim-From-Boot.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/23/2018 00:04
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
HOMEDIR=/home/brettsalemink
#-------------------------------------
	sudo cp -r /boot/slave1/home/brettsalemink/.vim /home/brettsalemink/
	sudo cp /boot/slave1/home/brettsalemink/.vimrc "$HOMEDIR/"
}	# end Main

Main

#===EXIT===
exit 0
