#!/bin/bash 
#====================================================
#
#          FILE: Start-Sickbeard.sh
# 
#         USAGE: ./Start-Sickbeard.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/29/2018 20:40
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	cd $HOME/development/stiles69/my-sickbeard-install
	python2.7 SickBeard.py
}	# end Main

Main

#===EXIT===
exit 0
