#!/bin/bash - 
#===============================================================================
#
#          FILE: Update-ALL.sh
# 
#         USAGE: ./Update-ALL.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/04/2018 05:06
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. $HOME/lib/sh/funcRunRemoteCommand.sh

COMMAND="$HOME/bin/update"
DELIMITER="###################################"
SPACE=" "
function ProceedYes ()
{
	# Pull SYNCDIR Stretch
	PullMachine "stretch.roguedesigns.us" "$COMMAND/Update-Stretch.sh"
	wait

	# Pull SYNCDIR Stiles
	PullMachine "stiles.roguedesigns.us" "$COMMAND/Update-Stiles.sh"
	wait

	# Pull SYNCDIR Pi64
	PullMachine "pi64.roguedesigns.us" "$COMMAND/Update-PI64.sh"
	wait

	# Pull Manjaro
	PullMachine "manjaro.roguedesigns.us" "$COMMAND/Update-Manjaro.sh"
	wait
}	# end function

function PullMachine ()
{
	local MACHINENAME="$1"
	RunRemoteCommand "$MACHINENAME" "$COMMAND"
	wait
	echo $DELIMITER
	echo "FINISHED UPDATING $MACHINENAME"
	echo $DELIMITER
	echo $SPACE
}	# end PullMachine

function Main ()
{
	ProceedYes
}	# end function Main
Main

#== EXIT ==
exit 0

