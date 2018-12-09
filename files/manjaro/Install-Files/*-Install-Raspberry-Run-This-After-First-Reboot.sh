#!/bin/bash 
#====================================================
#
#          FILE: *-Install-Raspberry-Pi.sh
# 
#         USAGE: ./*-Install-Raspberry-Pi.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 12/08/2018 22:17
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	./3-Install-SSH-Keys.sh
	wait
	cat $HOME/.ssh/id_rsa.pub
	echo "Now put key in github and start part two."
}	# end Main

Main

#===EXIT===
exit 0

