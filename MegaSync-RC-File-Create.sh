#!/bin/bash  
#====================================================
#
#          FILE: MegaSync-RC-File-Create.sh
# 
#         USAGE: ./MegaSync-RC-File-Create.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/31/2018 23:40
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error


#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	echo 'This will write a mega.rc file for automatic login.'
	echo 'Please enter your username. [user@domain.com]'
	read USERNAME
	echo 'Please enter your password'
	read PASSWORD

	echo '[Login]' > $HOME/.megarc
	echo "Username = "$USERNAME"" >> $HOME/.megarc
	echo "Password = "$PASSWORD"" >> $HOME/.megarc
}	# end Main

Main

#===EXIT===
exit 0

