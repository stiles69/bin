#!/bin/bash  
#===============================================================================
#
#          FILE: RMlint.sh
# 
#         USAGE: ./RMlint.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/14/2018 22:56
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

if [ "$NEMO_SCRIPT_SELECTED_FILE_PATHS" ]
then
	DIR="$NEMO_SCRIPT_SELECTED_FILE_PATHS"	
fi

function Main ()
{
	rmlint "$DIR"
}	# end Main

Main

# == EXIT ==
exit 0

