#!/bin/bash  
#====================================================
#
#          FILE: Set-Manjaro-Tautulli.sh
# 
#         USAGE: ./Set-Manjaro-Tautulli.sh
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
DIR0=$HOME/development/Docker/docker-tautulli

USERPLEX=brettsalemink
GROUPPLEX=plex
PERM=774
#-------------------------------------
function Main ()
{
	sudo chown -R $USERPLEX:$GROUPPLEX $DIR0
	sudo chmod -R $PERM $DIR0
	# Emby
	echo "Permissions Changed for $DIR0"
	ls -l $DIR0

}	# end Main

Main

#===EXIT===
exit 0
