#!/bin/bash  
#====================================================
#
#          FILE: Local-Serve.sh
# 
#         USAGE: ./Local-Serve.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/10/2018 03:55
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
set -e
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
SRCDIR="$1"
DESTDIR=/srv/http

#-------------------------------------
function Main ()
{
	
	echo 'This will sync $SRCDIR in 5 seconds hit Ctrl-C to cancel'
	echo '5'
	sleep 1
	echo '4'
	sleep 1
	echo '3'
	sleep 1
	echo '2'
	sleep 1
	echo '1'
	sudo rsync -rvz --delete-before $SRCDIR $DESTDIR
	sudo chown -R http:brettsalemink $DESTDIR
	sudo chmod -R 774 $DESTDIR
	echo 'Completed Serving on port 3000'
	
}	# end Main

Main

#===EXIT===
exit 0

