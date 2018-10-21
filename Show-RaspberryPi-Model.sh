#!/bin/bash  
#====================================================
#
#          FILE: Show-RaspberryPi-Model.sh
# 
#         USAGE: ./Show-RaspberryPi-Model.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/21/2018 09:17
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error


#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	cat /proc/cpuinfo
	echo 'Now compare the revision number with chart at https://elinux.org/RPi_HardwareHistory#Board_Revision_History'

	grep Revision /proc/cpuinfo
}	# end Main

Main

#===EXIT===
exit 0
