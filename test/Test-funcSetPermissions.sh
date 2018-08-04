#!/bin/bash
#===============================================================================
#
#          FILE: Test-funcSetPermissions.sh
# 
#         USAGE: ./Test-funcSetPermissions.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/03/2018 22:21
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. $HOME/lib/sh/funcSetPermissions.sh

function Main ()
{
	SetPermissions "$HOME/lib/sh"
}	# end Main

Main

#===EXIT===
exit 0

