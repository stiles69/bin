#!/bin/bash  
#====================================================
#
#          FILE: Install-Tmux.sh
# 
#         USAGE: ./Install-Tmux.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 08:38
#      REVISION:  ---
#====================================================

set -o nounset                              # Treat unset variables as an error

function InstallTmux ()
{
	sudo apt-get install tmux -y
}	

function Main ()
{
	InstallTmux
}	

Main 

# == Exit ==
exit 0	

