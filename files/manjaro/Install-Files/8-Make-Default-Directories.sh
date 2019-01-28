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
	mkdir -p $HOME/development/Docker $HOME/development/stiles69 $HOME/development/GitLab
	mkdir $HOME/Downloads
	mkdir -p $HOME/Aur $HOME/Incoming $HOME/Videos/DEVEDE $HOME/Videos/FFMPEG $HOME/Videos/HANDBRAKE $HOME/Videos/KDENLIVE $HOME/Videos/YOUTUBE


}	


function Main ()
{
	ProceedYes
}	

Main 

# == Exit ==
exit 0
