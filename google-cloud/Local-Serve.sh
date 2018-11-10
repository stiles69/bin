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
SRCDIR=./
DESTDIR=/srv/http/

#-------------------------------------
function Main ()
{
	echo 'This will sync $SRCDIR in 10 seconds hit Ctrl-C to cancel'
	echo '10'
	sleep 1
	echo '9'
	sleep 1
	echo '8'
	sleep 1
	echo '7'
	sleep 1
	echo '6'
	sleep 1
	echo '5'
	sleep 1
	echo '4'
	sleep 1
	echo '3'
	sleep 1
	echo '2'
	sleep 1
	echo '1'
	
	sudo find "$DESTDIR" -name "*" -delete
	rsync -rvz "$SRCDIR" "$DESTDIR"
	sudo chown -R http:brettsalemink "$DESTDIR"
	sudo chmod -R 700 "$DESTDIR"
	echo 'Completed Serving on port 3000'	
}	# end Main

Main

#===EXIT===
exit 0

