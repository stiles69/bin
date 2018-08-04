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
	# Sync Bin
	$HOME/bin/Pull-Bin.sh

	# Sync Sh
	$HOME/bin/Pull-Sh.sh
}	# end function

function SetPermissions ()
{
	$HOME/bin/Set-Permissions-Bin.sh
	$HOME/bin/Set-Permissions-Sh.sh
}	# end function

function CopyFiles ()
{
	cp -r $HOME/bin/files $HOME/bin/TRANSFER/
	echo "Done copying files to TRANSFER"
}	# end function

function Main ()
{
	ProceedYes
	CopyFiles
}	# end function Main
Main

#== EXIT ==
exit 0
