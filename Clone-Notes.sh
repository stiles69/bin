#!/bin/bash - 
#===============================================================================
#
#          FILE: Clone-Notes.sh
# 
#         USAGE: ./Clone-Notes.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 10:00
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cd ~/
git clone git@github.com:stiles69/Notes.git

exit 0

