#!/bin/bash  
#====================================================
#
#          FILE: Set-Http-Server.sh
# 
#         USAGE: ./Set-Http-Server.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/25/2018 06:45
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
DIR='$1'
#-------------------------------------
function Main ()
{
	sudo rsync -rvz '$DIR' /srv/http
	sudo chown -R http:http /srv/http
	sudo chmod -R 774 /srv/http

}	# end Main

Main

#===EXIT===
exit 0

