#!/bin/bash
#====================================================
#
#          FILE:  transmission-extract.sh
# 
#         USAGE:  ./transmission-extract.sh 
# 
#   DESCRIPTION:  This will extract rar files when done downloading.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  06/21/2018 11:38:11 PM CDT
#      REVISION:  ---
#====================================================
#---------- SOURCED ---------

#----------------------------

#---------- GLOBAL VARIABLES ---------
HOST=10.0.0.11
DIR="/torrents"
DIRCOMPLETED="$DIR/completed"
PARAM1="$1"
PARAM2="$2"
#-------------------------------------
UnrarDir()
{
	cd $DIR
	find . -name '*.rar' -execdir unrar e -o- {} \;
	wait
}	# end

MoveDir()
{
	find $DIR -name '*.mp4' -exec mv -t "$DIRCOMPLETED" {} +
	find $DIR -name '*.mkv' -exec mv -t "$DIRCOMPLETED" {} +
	find $DIR -name '*.avi' -exec mv -t "$DIRCOMPLETED" {} +
	find $DIR -name '*.mpg' -exec mv -t "$DIRCOMPLETED" {} +
	find $DIR -name '*.wmv' -exec mv -t "$DIRCOMPLETED" {} +
	find $DIR -name '*.mpeg' -exec mv -t "$DIRCOMPLETED" {} +
	find $DIR -name '*.flv' -exec mv -t "$DIRCOMPLETED" {} +

}	# end

function SendMessage ()
{
	sshpass -p "Samsung#2013" ssh brettsalemink@$HOST 'dunstify --icon=/usr/share/icons/roguedesigns/slave-icon-256x256.png "Slave3" "Extraction Complete"'

	curl https://xdroid.net/api/message -X POST -d "k=u-440890b42fee" -d "t='$TITLE'" -d "c='$MSG'" -d "u=http://roguedesigns.us"
}	# end

function Main ()
{
	UnrarDir
	wait
	MoveDir
	wait
	
	SendMessage

}	# end Main

Main

#===EXIT===
exit 0
