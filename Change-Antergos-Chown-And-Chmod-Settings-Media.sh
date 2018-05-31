#!/bin/bash
#===============================================================================
#
#          FILE:  Change-Antergos-Chown-And-Chmod-Settings-Media.sh
# 
#         USAGE:  ./Change-Antergos-Chown-And-Chmod-Settings-Media.sh 
# 
#   DESCRIPTION:  This Changed the owner to brettsalemink:plex and 774 to /mnt/Media.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  01/28/2018 10:14:35 PM CST
#      REVISION:  1.0
#===============================================================================


set -o nounset                                  # treat unset variables as errors

#===============================================================================
#   GLOBAL DECLARATIONS
#===============================================================================
declare -rx SCRIPT=${0##*/}                     # the name of this script
declare -rx mkdir='/bin/mkdir'                  # the mkdir(1) command

#===============================================================================
#   SANITY CHECKS
#===============================================================================
if [ -z "$BASH" ] ; then
printf "$SCRIPT:$LINENO: run this script with the BASH shell\n" >&2
exit 192
fi

if [ ! -x "$mkdir" ] ; then
printf "$SCRIPT:$LINENO: command '$mkdir' not available - aborting\n" >&2
exit 192
fi

#===============================================================================
#   MAIN SCRIPT
#===============================================================================
sudo chown -R brettsalemink:plex /mnt/Media
sudo chmod -R 774 /mnt/Media
#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0
