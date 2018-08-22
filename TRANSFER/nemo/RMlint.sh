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
	DIR="$NEMO_SCRIPT_SELECTED_FILE_PATHS/"	
fi

function Main ()
{
	cd "$DIR"
	rmlint "./"	
}	# end Main

Main

# == EXIT ==
exit 0

#==DEBUGGING==
#echo "DIR: $DIR" > $HOME/RMLINT.txt
#echo "NEMO_SCRIPT_SELECTED_FILE_PATHS: $NEMO_SCRIPT_SELECTED_FILE_PATHS" >> $HOME/RMLINT.txt
