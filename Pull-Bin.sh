#!/bin/bash
#==========================================================
#
#          FILE: Pull-Bin.sh
# 
#         USAGE: ./Pull-Bin.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/03/2018 22:04
#      REVISION:  ---
#==========================================================

set -o nounset                              # Treat unset variables as an error

#---------- SOURCED ---------
. $HOME/lib/sh/funcDisplayHostname.sh
. $HOME/lib/sh/funcSetPermissions.sh
#----------------------------

#---------- GLOBAL VARIABLES ---------
DELIMITER="################################"
SYNCDIR=$HOME/bin
HOSTNAME="$(DisplayHostname)"
#-------------------------------------
function ProceedYes ()
{
	# Push Local First
	GitPushLocal

	# Pull SYNCDIR
	Pull "$SYNCDIR"
	wait

	# Push SYNCDIR
	Push "$SYNCDIR"
	wait

	# Set Permissions SYNCDIR
	PermissionsSet "$SYNCDIR"
}	# end function

function GitPushLocal ()
{
	$HOME/bin/git/Git-Push-Bin-LOCAL.sh
}	# end function

function Push ()
{
	local GITDIR=$1
	COMMITMESSAGE="$HOSTNAME Bash"
	cd "$GITDIR"
	git add .
	git commit -m "$COMMITMESSAGE"
	git push
	echo "$DELIMITER"
	echo "FINISHED PUSHING $GITDIR"
	echo "$DELIMITER"
}	# end function

function Pull ()
{
	local GITDIR=$1
	cd "$GITDIR"
	git pull --rebase
	echo $DELIMITER
	echo "FINISHED PULLING $GITDIR"
	echo $DELIMITER
}	# end function

function PermissionsSet ()
{
	local GITDIR="$1"
	SetPermissions "$GITDIR"
	echo $DELIMITER
	echo "FINISHED SETTING PERMISSION $GITDIR"
	echo $DELIMITER
}	# end function

function Main ()
{
	ProceedYes
}	# end function Main
Main

#== EXIT ==
exit 0
