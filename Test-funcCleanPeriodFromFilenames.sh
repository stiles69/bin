#!/bin/bash  
#===============================================================================
#
#          FILE: Test-funcCleanPeriodFromFilenames.sh
# 
#         USAGE: ./Test-funcCleanPeriodFromFilenames.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/11/2018 23:06
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. $HOME/lib/sh/funcCleanPeriodFromFilenames.sh

CleanPeriodFromFilenames

