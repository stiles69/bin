#!/bin/bash 
#====================================================
#
#          FILE: Download-Bin-Zip.sh
# 
#         USAGE: ./Download-Bin-Zip.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/07/2018 02:02
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
DOWNLOADDIR=$HOME
#-------------------------------------
function Main ()
{
	cd $DOWNLOADDIR
	wget https://github.com/stiles69/bin/archive/master.zip
	unzip master.zip
	rm master.zip
}	# end Main

Main

#===EXIT===
exit 0

