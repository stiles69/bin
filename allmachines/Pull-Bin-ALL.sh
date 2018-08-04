#!/bin/bash
#===============================================================================
#
#          FILE: Pull-Bin-ALL.sh
# 
#         USAGE: ./Pull-Bin-ALL.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/03/2018 22:33
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

SYNCDIR="$HOME/bin"

. $HOME/lib/sh/funcDisplayHostname.sh

HOSTNAME="$(DisplayHostname)"

function ProceedYes ()
{
	# Pull SYNCDIR Stretch
	ssh brettsalemink@stretch.roguedesigns.us "$HOME/bin/Pull-Bin.sh"
	wait
}	# end function

function Main ()
{
	ProceedYes
}	# end function Main
Main

#== EXIT ==
exit 0
