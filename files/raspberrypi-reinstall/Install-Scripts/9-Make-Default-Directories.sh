#!/bin/bash  
#====================================================
#
#          FILE: Make-Default-Directories.sh
# 
#         USAGE: ./Make-Default-Directories.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 05/07/18 11:32
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

function ProceedYes ()
{
	if [ ! -d "$HOME/development/Docker" ]
	then
		mkdir -p $HOME/development/Docker 
	fi

	if [ ! -d "$HOME/development/GitLab" ]
	then
		mkdir -p $HOME/development/GitLab
	fi

	if [ ! -d "$HOME/development/stiles69" ]
	then
		mkdir -p $HOME/development/stiles69
	fi

	if [ ! -d "$HOME/Downloads" ]
	then
		mkdir -p $HOME/Downloads
	fi

	if [ ! -d "$HOME/Aur" ]
	then
		mkdir -p $HOME/Aur 
	fi

	if [ ! -d "$HOME/Incoming" ]
	then
		mkdir -p $HOME/Incoming
	fi

	if [ ! -d "$HOME/Videos" ]
	then
		mkdir -p $HOME/Videos
	fi

	if [ ! -d "$HOME/Videos/DEVEDE" ]
	then
		mkdir -p $HOME/Videos/DEVEDE 
	fi

	if [ ! -d "$HOME/Videos/FFMPEG" ]
	then
		mkdir -p $HOME/Videos/FFMPEG 
	fi

	if [ ! -d "$HOME/Videos/HANDBRAKE" ]
	then
		mkdir -p $HOME/Videos/HANDBRAKE 
	fi

	if [ ! -d "$HOME/Videos/KDENLIVE" ]
	then
		mkdir -p $HOME/Videos/KDENLIVE 
	fi

	if [ ! -d "$HOME/Videos/YOUTUBE" ]
	then
		mkdir -p $HOME/Videos/YOUTUBE
	fi


}	


function Main ()
{
	ProceedYes
}	

Main 

# == Exit ==
exit 0
