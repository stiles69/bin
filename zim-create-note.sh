#!/bin/bash  
#====================================================
#
#          FILE: zim-create-note.sh
# 
#         USAGE: ./zim-create-note.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/23/2018 00:51
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
NOTEDIR=$HOME/Notes
CURRENTDIR="./"
NOTENAME="$1"
#DATE=`date +%Y-%m-%d`
# get day
DD=$(D+"%d")
# get month 
MM=$(D+"%M")
# get year
YY=$(D+"%Y")
# get date
DATE=$("%d")

#-------------------------------------
function Main (
{
	if [ ! "$NOTENAME" ]
	then
		echo "Please enter note name:"
		read NOTENAME
	fi

	echo "===== $NOTENAME =====" > "$CURRENTDIR/$NOTENAME.txt"
	echo"Content-Type: text/x-zim-wiki Wiki-Format: zim 0.4" >> "$CURRENTDIR/$NOTENAME.txt"
	echo "Created $DD $DATE $MM $YY" >> "$CURRENTDIR/$NOTENAME.txt"
}	# end Main

Main

#===EXIT===
exit 0
