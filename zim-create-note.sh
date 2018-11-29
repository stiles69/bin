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
. $HOME/lib/sh/funcParseUnderlines.sh
#-------------------------------------
#---------- GLOBAL VARIABLES ---------
#===================================
function Main ()
{
	local NOTENAME
	NOTEDIR="$HOME/Notes"
	CURRENTDIR="./"
	E_BADARGS=85

	if [ $# -ne 1 ]
	then
		echo "Usage: `basename $0` Note-Title-With-Underlines NO EXT"
		exit $E_BADARGS
	fi
	
	NOTENAME="$1"

	read YYYY MM DD <<<$(date +'%Y %m %d')
	MONTH=$(date +"%B")
	DOW=$(date +"%a")
	TIMESTAMP=`date --rfc-3339=seconds`
	
	NOTETITLE=$(ParseUnderlines $NOTENAME)
	wait

	echo "Content-Type: text/x-zim-wiki" > "$CURRENTDIR/$NOTENAME.txt"
	wait
	echo "Wiki-Format: zim 0.4" >> "$CURRENTDIR/$NOTENAME.txt"
	wait
	echo "Creation-Date: $TIMESTAMP" >> "$CURRENTDIR/$NOTENAME.txt"
	wait
	echo " " >> "$CURRENTDIR/$NOTENAME.txt"
	wait
	echo "====== $NOTETITLE ======" >> "$CURRENTDIR/$NOTENAME.txt"
	wait
	echo "Created $DOW $DD $MONTH $YYYY" >> "$CURRENTDIR/$NOTENAME.txt"
	wait
	vim "$CURRENTDIR/$NOTENAME.txt"
	wait
}	# end Main



Main $1

#===EXIT===
exit 0
