#!/bin/bash  
#===============================================================================
#
#          FILE: Display-OS.sh
# 
#         USAGE: ./Display-OS.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 00:53
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
# Include Lib
. ~/lib/sh/funcOS.sh
# Use Function
echo 'The Linux Distro is: '
RESULT=$(funcOS)
echo $RESULT
# Exit
exit 0


