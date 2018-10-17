#!/bin/bash
#====================================================
#
#          FILE: Install-SSH-Keys.sh
# 
#         USAGE: ./Install-SSH-Keys.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 08:25
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	mkdir $HOME/.ssh
	ssh-keygen -t rsa -b 2048 -C $(hostname)
	wait
	cat $HOME/id_rsa.pub
	echo 'You now need to copy this ssh-key to github at https://github.com/settings/keys'
	echo 'When done start Master-Install-2.sh'
}	

Main

#===EXIT===
exit 0
