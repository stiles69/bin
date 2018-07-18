#!/bin/bash  
#===============================================================================
#
#          FILE: Test-funcCompareDirectory1ToDirectory2.sh
# 
#         USAGE: ./Test-funcCompareDirectory1ToDirectory2.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/14/2018 09:46
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

USAGE="This requires two paramters the first directory where you have a set of mp3 files and the second parameter which is the directory to check for the same file name. Not EXTENSION but filename."

. $HOME/lib/sh/funcCompareDirectory1ToDirectory2.sh

if [ "$#" = 2 ]
then
	DIRECTORY1="$1"
	DIRECTORY2="$2"
else
	echo $USAGE
	echo "Exiting"
	exit 1
fi

function Main ()
{
	CompareDirectory1ToDirectory2 "$DIRECTORY1" "$DIRECTORY2"
}	# end Main

Main

#==EXIT==
exit 0


