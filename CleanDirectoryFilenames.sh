#!/bin/bash - 
#===============================================================================
#
#          FILE: CleanDirectoryFilenames.sh
# 
#         USAGE: ./CleanDirectoryFilenames.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/12/2018 01:27
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. $HOME/lib/sh/funcCleanWholeDirectory.sh

CleanWholeDirectory

