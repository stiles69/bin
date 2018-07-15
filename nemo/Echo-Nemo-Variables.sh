#!/bin/bash  
#===============================================================================
#
#          FILE: Echo-Nemo-Variables.sh
# 
#         USAGE: ./Echo-Nemo-Variables.sh 
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

if [ "$#" -gt 0 ]
then
	DIR="$1"
fi


function Main ()
{
echo "NEMO_SCRIPT_SELECTED_FILE_PATHS: $NEMO_SCRIPT_SELECTED_FILE_PATHS" > $HOME/RMLINTOUTPUT.txt
	echo "NEMO_SCRIPT_SELECTED_URIS: $NEMO_SCRIPT_SELECTED_URIS" >> $HOME/RMLINTOUTPUT.txt
	echo "NEMO_SCRIPT_CURRENT_URI: $NEMO_SCRIPT_CURRENT_URI" >> $HOME/RMLINTOUTPUT.txt
	echo "NEMO_SCRIPT_WINDOW_GEOMETRY: $NEMO_SCRIPT_WINDOW_GEOMETRY" >> $HOME/RMLINTOUTPUT.txt
	echo "NEMO_SCRIPT_NEXT_PANE_SELECTED_FILE_PATHS: $NEMO_SCRIPT_NEXT_PANE_SELECTED_FILE_PATHS" >> $HOME/RMLINTOUTPUT.txt
	echo "NEMO_SCRIPT_NEXT_PANE_SELECTED_URIS: $NEMO_SCRIPT_NEXT_PANE_SELECTED_URIS" >> $HOME/RMLINTOUTPUT.txt
	echo "NEMO_SCRIPT_NEXT_PANE_CURRENT_URI: $NEMO_SCRIPT_NEXT_PANE_CURRENT_URI" >> $HOME/RMLINTOUTPUT.txt
}

Main

# == EXIT ==
exit 0