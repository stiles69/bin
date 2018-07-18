#!/bin/bash - 
#===============================================================================
#
#          FILE: Test-Notify.sh
# 
#         USAGE: ./Test-Notify.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/18/2018 07:51
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cd $HOME/Test
find . -type f -cmin -5 -exec echo '{}' \;


