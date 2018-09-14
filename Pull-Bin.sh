#!/bin/bash
#======================================================
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
#======================================================
#---------- SOURCED ---------
source $HOME/lib/sh/funcDisplayHostname.sh
source $HOME/lib/sh/funcSetPermissions.sh
#----------------------------

#---------- GLOBAL VARIABLES ---------
SYNCDIR=$HOME/bin
HOSTNAME="$(DisplayHostname)"
COMMITMESSAGE="$HOSTNAME Bash"
#-------------------------------------
function ProceedYes ()
{
	# Commit SYNCDIR
	GitCommit "$SYNCDIR"
	wait

	# Pull SYNCDIR
	Pull "$SYNCDIR"
	wait
	
	# Push SYNCDIR
	Push "$SYNCDIR"
	wait

	# Set Permissions SYNCDIR
	PermissionsSet "$SYNCDIR"
	wait

	# Set Source
	SetSource
	wait
}	# end function

function GitCommit ()
{
	local GITDIR=$1
	cd "$GITDIR"
	git add .
	git commit -m "$COMMITMESSAGE"
	echo "Commited $COMMITMESSAGE"
}	# end function

function Push ()
{
	local GITDIR=$1
	COMMITMESSAGE="$HOSTNAME Bash"
	cd "$GITDIR"
	git add .
	git commit -m "$COMMITMESSAGE"
	git push
	echo "#########################################################"
	echo "FINISHED PUSHING $GITDIR"
	echo "#########################################################"
	echo "               "
}	# end function

function Pull ()
{
	local GITDIR=$1
	cd "$GITDIR"
	git pull 
	echo "#########################################################"
	echo "FINISHED PULLING $GITDIR"
	echo "#########################################################"
	echo "               "
}	# end function

function PermissionsSet ()
{
	local GITDIR="$1"
	SetPermissions "$GITDIR"
	echo "#########################################################"
	echo " FINISHED SETTING PERMISSION $GITDIR"
	echo "#########################################################"
	echo "               "
}	# end function

function SetSource ()
{
	source ~/.zshrc
	wait
}	# end

function Main ()
{
	ProceedYes
}	# end function Main
Main

#== EXIT ==
exit 0
