#!/bin/bash  
#===============================================================================
#
#          FILE: Pull-Notes-ALL.sh
# 
#         USAGE: ./Pull-Notes-ALL.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/03/2018 23:16
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

COMMAND="$HOME/bin/Pull-Notes.sh"

function ProceedYes ()
{
	# Pull SYNCDIR Stretch
	PullMachine "stretch.roguedesigns.us"
	wait

	# Pull SYNCDIR Stiles
	PullMachine "stiles.roguedesigns.us"
	wait

	# Pull SYNCDIR Pi64
	PullMachine "pi64.roguedesigns.us"
	wait
}	# end function

function PullMachine ()
{
	local MACHINENAME="$1"
	ssh brettsalemink@"$MACHINENAME" "$COMMAND"
	wait
	echo "Finished Syncing $MACHINENAME"
}	# end PullMachine

function Main ()
{
	ProceedYes
}	# end function Main
Main

#== EXIT ==
exit 0
