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

}	# end function

function Push ()
{
	local GITDIR=$1
	COMMITMESSAGE="$HOSTNAME Bash"
	cd $HOME/bin
	git add .
	git commit -m "$COMMITMESSAGE"
	git push
	
}	# end function

function Pull ()
{
	local GITDIR=$1
	cd "$GITDIR"
	git pull
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


