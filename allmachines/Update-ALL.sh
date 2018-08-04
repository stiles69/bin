#!/bin/bash  
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

COMMANDSTRETCH="$HOME/bin/update/Update-Stretch.sh"
COMMANDSTILES="$HOME/bin/update/Update-Stiles.sh"
COMMANDPI64="$HOME/bin/update/Update-PI64S.sh"
COMMANDMANJARO="$HOME/bin/update/Update-Manjaro.sh"
COMMANDSTRETCH="$HOME/bin/update/Update-Stretch.sh"
DELIMITER="###################################"
SPACE=" "
function ProceedYes ()
{
	# Pull SYNCDIR Stretch
	PullMachine "stretch.roguedesigns.us" "$COMMANDSTRETCH"
	wait

	# Pull SYNCDIR Stiles
	PullMachine "stiles.roguedesigns.us" "$COMMANDSTILES"
	wait

	# Pull SYNCDIR Pi64
	PullMachine "pi64.roguedesigns.us" "$COMMANDPI64"
	wait

	# Pull Manjaro
	PullMachine "manjaro.roguedesigns.us" "$COMMANDMANJARO"
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

