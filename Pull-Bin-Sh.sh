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
	# Pull Bin local
	Pull "$HOME/bin"
	wait

	# Push Bin local
	Push "$HOME/bin"
	wait

	# Pull Sh local
	Pull "$HOME/lib/sh"
	wait

	# Push Sh local
	Push "$HOME/lib/sh"
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

function SetPermissions ()
{
	local GITDIR=$1
	sudo chown -R brettsalemink:users $GITDIR
	sudo chmod -R 774 $GITDIR
	wait
	echo "Done setting permissions on $GITDIR"
}	# end function

function CopyFiles ()
{
	cp -r $HOME/bin/files $HOME/bin/TRANSFER/
}	# end function

function Main ()
{
	ProceedYes
	CopyFiles
}	# end function Main
Main

#== EXIT ==
exit 0
