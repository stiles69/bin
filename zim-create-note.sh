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
set -e # Needed for sleep
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
NOTEDIR=$HOME/Notes
CURRENTDIR="./"
NOTENAME="$1"
#-------------------------------------
function Main ()
{
	read YYYY MM DD <<<$(date +'%Y %m %d')
	MONTH=$(date +"%B")
	DOW=$(date +"%a")

	if [ ! "$NOTENAME" ]
	then
		echo "Please enter note name:"
		read NOTENAME
	fi

	echo "===== $NOTENAME =====" > "$CURRENTDIR/$NOTENAME.txt"
	wait
	echo "Content-Type: text/x-zim-wiki Wiki-Format: zim 0.4" >> "$CURRENTDIR/$NOTENAME.txt"
	wait
	echo " " >> "$CURRENTDIR/$NOTENAME.txt"
	echo "Created $DOW $DD $MONTH $YYYY" >> "$CURRENTDIR/$NOTENAME.txt"
	wait
	vim "$CURRENTDIR/$NOTENAME.txt"
	wait
}	# end Main


Main

#===EXIT===
exit 0
