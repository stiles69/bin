#!/bin/bash
#===============================================================================
#
#          FILE:  Convert-mp3-To-m4a.sh
# 
#         USAGE:  ./Convert-mp3-To-m4a.sh 
# 
#   DESCRIPTION:  Converts .mp3 files to m4a files.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  OrDir is the output directory.
#        AUTHOR:  Brett Salemink (BS), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  12/04/2017 06:22:27 PM CST
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
mkdir ./Converted

for file in ./*.mp3
do
	ffmpeg -i "$file" -c:a libfdk_aac -vn ./Converted/"$file".m4a
done


#find . -type f -exec /bin/bash -c \
#	'f2=$(basename "$l"); \
#	ffmpeg -i "$l" -c:a libfaac -vn "./Converted/${f2%.*}.m4a" ' _ {} \;
#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0

