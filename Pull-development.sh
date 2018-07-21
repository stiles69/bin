#!/bin/bash  
#===============================================================================
#
#          FILE: Git-Bin-SH.sh
# 
#         USAGE: ./Git-Bin-SH.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 06:15
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. $HOME/lib/sh/funcDisplayHostname.sh

HOSTNAME="$(DisplayHostname)"

function ProceedYes ()
{

	# Pull Development/stiles69/
	Pull "$HOME/development/stiles69"
	wait

	# Push Development/stiles69
	Push "$HOME/development/stiles69"
	wait

	# Pull Development
	Pull "$HOME/development"
	wait

	# Push Development
	Push "$HOME/development"
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
}	# end function

function Pull ()
{
	local GITDIR=$1
	cd "$GITDIR"
	git pull
	SetPermissions "$GITDIR"
}	# end function

function SetPermissions ()
{
	local GITDIR=$1
	sudo chown -R brettsalemink:users $GITDIR
	sudo chmod -R 774 $GITDIR
	wait
}	# end function

function Main ()
{
	ProceedYes
}	# end function Main
Main

#== EXIT ==
exit 0
