#!/bin/bash
#===============================================================================
#
#          FILE:  Install-FFMPEG.sh
# 
#         USAGE:  ./Install-FFMPEG.sh
# 
#   DESCRIPTION:  This installs git and clones bin.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  06/20/2018 08:30:04 AM CDT
#      REVISION:  ---
#===============================================================================

SETPERMISSIONSDIR=$HOME/bin

function SetPermissions ()
{
	SETPERMISSIONSDIR=$1
	sudo chown -R brettsalemink:users $SETPERMISSIONSDIR
	sudo chmod -R 774 $SETPERMISSIONSDIR
	wait
	echo "Done setting permissions on $SETPERMISSIONSDIR"
}	# end function


function Main ()
{
	SetPermissions "$SETPERMISSONSDIR"
}	# end Main

Main

# == Exit ==
exit 0
