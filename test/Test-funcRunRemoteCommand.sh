#!/bin/bash  
#===============================================================================
#
#          FILE: Test-funcRunRemoteCommand.sh
# 
#         USAGE: ./Test-funcRunRemoteCommand.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/03/2018 23:30
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. $HOME/lib/sh/funcRunRemoteCommand.sh

MACHINENAME="stretch.roguedesigns.us"
COMMAND="$HOME/bin/Display-OS.sh"

function Main ()
{
	RunRemoteCommand "$MACHINENAME" "$COMMAND"	
}	# end Main

Main

#===EXIT===
exit 0
