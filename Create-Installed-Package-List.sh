#!/bin/bash
#===============================================================================
#
#          FILE:  Create-Installed-Package-List.sh
# 
#         USAGE:  ./Create-Installed-Package-List.sh 
# 
#   DESCRIPTION:  This will create a Installed Packages list nameed pkglist.txt.
#		  to install packages use pacman -S - < pkglist.txt.	
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  02/11/2018 07:45:57 PM CST
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
pacman -Qqen > pkglist.txt
#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0

