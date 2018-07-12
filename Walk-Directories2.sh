#!/bin/bash  
#===============================================================================
#
#          FILE: WalkDirectories.sh
# 
#         USAGE: ./WalkDirectories.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/12/2018 03:55
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

if [ ! -d "$PWD/Converted" ]
then
	echo "Making directory Converted."
	mkdir Converted
find . -type d -exec `rsync -rvz --progress ./Converted/ ./Converted '{}'` \;

