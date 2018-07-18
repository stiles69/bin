#!/bin/bash - 
#===============================================================================
#
#          FILE: Test-funcRemoveSpecialCharactersFromFilenames.sh
# 
#         USAGE: ./Test-funcRemoveSpecialCharactersFromFilenames.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/11/2018 23:34
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. $HOME/lib/sh/funcRemoveSpecialCharactersFromFilenames.sh

RemoveSpecialCharactersFromFilenames

