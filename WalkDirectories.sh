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

find . -type d -exec `$HOME/bin/CleanWholeDirectory '{}'` \;

