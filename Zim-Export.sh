#!/bin/bash
#===============================================================================
#
#          FILE:  Zim-Export.sh
# 
#         USAGE:  ./Zim-Export.sh 
# 
#   DESCRIPTION:  This will export zim notebook.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  05/23/2018 07:55:02 AM CDT
#      REVISION:  ---
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

#-----------------Export Zim------------------
zim --export -O --output /home/brettsalemink/stiles69/zim --template ~/Templates/html/ZeroFiveEight --index-page index -r /home/brettsalemink/Notes
wait

#-----------------Change Directories--------------
cd $HOME/stiles69/zim

#----------------git push-------
git add .
git commit -m "update"
git push

#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0
