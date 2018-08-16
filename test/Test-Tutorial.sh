#!/bin/bash  
#====================================================
#
#          FILE: Test-Tutorial.sh
# 
#         USAGE: ./Test-Tutorial.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/15/2018 20:20
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------

#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	if [ -e /etc/hgdd ] 
	then
		echo 'True'
	else
		echo 'False'
	fi

}	# end Main

Main

#===EXIT===
exit 0

