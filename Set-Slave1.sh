#!/bin/bash  
#====================================================
#
#          FILE: Set-Slave1.sh
# 
#         USAGE: ./Set-Slave1.sh
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 12:56
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------

#---------- GLOBAL VARIABLES ---------
DIR0=/torrents
DIR1=/home/brettsalemink/development/Docker/docker-deluge-slave1
CHUSER=brettsalemink
CHGROUP=brettsalemink
PERM=774
#-------------------------------------
function Main ()
{
	sudo chown -R $CHUSER:$CHGROUP "$DIR0"
	sudo chmod -R $PERM "$DIR0"
	sudo chown -R $CHUSER:$CHGROUP "$DIR1"
	sudo chmod -R $PERM "$DIR1"
	
	ls -l $DIR0
	ls -l $DIR1
}	# end Main

Main

#===EXIT===
exit 0
