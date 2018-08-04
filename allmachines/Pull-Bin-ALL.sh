#!/bin/bash
#===============================================================================
#
#          FILE: Pull-Bin-ALL.sh
# 
#         USAGE: ./Pull-Bin-ALL.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/03/2018 22:33
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

SYNCDIR="$HOME/bin"

. $HOME/lib/sh/funcDisplayHostname.sh

HOSTNAME="$(DisplayHostname)"

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
	ssh brettsalemink@"$MACHINENAME" "$HOME/bin/Pull-Bin.sh"
	wait
	echo "Finished Syncing $MACHINENAME $SYNCDIR"
}	# end PullMachine

function Main ()
{
	ProceedYes
}	# end function Main
Main

#== EXIT ==
exit 0
