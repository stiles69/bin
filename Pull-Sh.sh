#!/bin/bash
#===============================================================================
#
#          FILE: Pull-Sh.sh
# 
#         USAGE: ./Pull-Sh.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/03/2018 22:05
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

SYNCDIR=$HOME/lib/sh

. $HOME/lib/sh/funcDisplayHostname.sh
. $HOME/lib/sh/funcSetPermissions.sh

HOSTNAME="$(DisplayHostname)"

function ProceedYes ()
{
	# Pull SYNCDIR
	Pull "$SYNCDIR"
	wait

	# Push SYNCDIR
	Push "$SYNCDIR"
	wait
}	# end function

function Push ()
{
	local GITDIR=$1
	COMMITMESSAGE="$HOSTNAME Bash"
	cd "$GITDIR"
	git add .
	git commit -m "$COMMITMESSAGE"
	git push
	SetPermissions "$GITDIR"
	echo "Done pushing $GITDIR"
}	# end function

function Pull ()
{
	local GITDIR=$1
	cd "$GITDIR"
	git pull --rebase
	SetPermissions "$GITDIR"
	echo "Done pulling $GITDIR"
}	# end function


function Main ()
{
	ProceedYes
}	# end function Main
Main

#== EXIT ==
exit 0

