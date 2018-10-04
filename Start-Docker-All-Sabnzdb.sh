#!/bin/bash 
#====================================================
#
#          FILE: Start-Docker-All-Sabnzdb.sh
# 
#         USAGE: ./Start-Docker-All-Sabnzdb.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/04/2018 01:11
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	docker start sabnzdb
	wait
	docker start sickbeard
	wait
	docker start couchpotato
	wait
	docker start headphones
	wait
}	# end Main

Main

#===EXIT===
exit 0

