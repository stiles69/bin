#!/bin/bash - 
#===============================================================================
#
#          FILE: Sync-Bin-Sh-All.sh
# 
#         USAGE: ./Sync-Bin-Sh-All.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/12/2018 04:28
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


SCRIPTDEFINITION="This will install first perform a pull and a push on the $HOME/bin $HOME/sh on this machine and then on the others."
function Proceed ()
{
	echo $SCRIPTDEFINITION
	echo "Do you want to proceed? [Y/n]"
	read PROCEED
	case $PROCEED in
		"Y"|"y")
		ProceedYes
		;;
		"N"|"n")
		ProceedNo
		;;
		*)
		ProceedYes
		;;
	esac
}	# end function

function ProceedYes ()
{
	# Push Bin local
	Push $HOME/bin
	
	# Pull Bin local
	Pull $HOME/bin
	
	# Push/Pull  Bin/sh PI64
	PushPullHost pi64.roguedesigns.us
#	ssh brettsalemink@pi64.roguedesigns.us "$HOME/bin/Pull-Bin-Sh.sh"
	
	# Push/Pull Bin/sh Stretch

}	# end function

function PushPullHost ()
{
	local COMMANDLINE="$HOME/bin/Pull-Bin-Sh.sh"
	local HOST="$1"
	COMPLETESSHCOMMAND=$(echo ` brettsalemink@"$HOST $COMMANDLINE"`)
	ssh $COMPLETESSHCOMMAND
}	# end function

function Push ()
{
	local GITDIR=$1
	COMMITMESSAGE="$HOSTNAME Bash"
	cd $HOME/bin
	git add .
	git commit -m "$COMMITMESSAGE"
	git push
	SetPermissions "$GITDIR"
	wait	
}	# end function

function Pull ()
{
	local GITDIR=$1
	cd "$GITDIR"
	git pull
	wait
	SetPermissions "$GITDIR"
}	# end function

function SetPermissions ()
{
	local GITDIR=$1
	sudo chown -R brettsalemink:users $GITDIR
	sudo chmod -R 774 $GITDIR
	wait
}	# end function


function ProceedNo ()
{
	exit 0 # default action is exit for no
}	# end function

function Main ()
{
	Proceed
}	# end Main

Main # Call Main

# == Exit ==
exit 0	# Always exit properly


