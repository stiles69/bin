#!/bin/bash  
#===============================================================================
#
#          FILE: Test-funcCheckForString.sh
# 
#         USAGE: ./Test-funcCheckForString.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/07/2018 03:03
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

USAGE="Usage Test-funcCheckForString.sh [STRINGTOCHECK] [PATH/TO/FILETOCHECK]. ex. Must be full path and file."

## Variables
STRINGTOCHECK=$1
FILETOCHECK=$2

. ~/lib/sh/funcCheckFileString.sh
function Main ()
{
	CheckFileString $STRINGTOCHECK $FILETOCHECK

}	# end Main

if [ "$#" -lt 2 ]
then
	echo "Wrong number of parameters. $USAGE"
	exit 1 
else 
	Main
fi

# == Exit ==
exit 0	# Always exit properly


