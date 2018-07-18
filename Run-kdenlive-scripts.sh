#!/bin/bash - 
#===============================================================================
#
#          FILE: Run-kdenlive-scripts.sh
# 
#         USAGE: ./Run-kdenlive-scripts.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/17/2018 22:44
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

function RunAllKdenLiveScripts ()
{
	cd $HOME/.config/kdenlive/scripts
	for i in ".sh"
		echo "Running $i"
		"$i"
		wait
		echo "$i Completed"
	fi
}	# end function

function Main ()
{
	RunAllKdenLiveScripts
}	# end Main

Main

#==EXIT==
exit 0
