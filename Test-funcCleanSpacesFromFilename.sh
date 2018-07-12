#!/bin/bash - 
#===============================================================================
#
#          FILE: Test-funcCleanSpacesFromFilename.sh
# 
#         USAGE: ./Test-funcCleanSpacesFromFilename.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/11/2018 23:23
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. $HOME/lib/sh/funcCleanSpacesFromFilenames.sh

CleanSpacesFromFilenames

