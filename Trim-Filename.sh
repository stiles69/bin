#!/bin/bash
#===============================================================================
#
#          FILE:  Trim-Filename.sh
#
#         USAGE:  ./Trim-Filename.sh
#
#   DESCRIPTION:  This will remove spaces from filenames.
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  05/09/2018 01:04:55 PM CDT
#      REVISION:  ---
#===============================================================================

set -o nounset                 # treat unset variables as errors

#===============================================================================
#   GLOBAL DECLARATIONS
#===============================================================================
declare -rx SCRIPT=${0##*/}    # the name of this script
declare -rx mkdir='/bin/mkdir' # the mkdir(1) command

#===============================================================================
#   SANITY CHECKS
#===============================================================================
if [ -z "$BASH" ]; then
	printf "$SCRIPT:$LINENO: run this script with the BASH shell\n" >&2
	exit 192
fi

if [ ! -x "$mkdir" ]; then
	printf "$SCRIPT:$LINENO: command '$mkdir' not available - aborting\n" >&2
	exit 192
fi

#===============================================================================
#   MAIN SCRIPT
#===============================================================================
IFS="_"
for file in * 
do
	mv "$file" ${file// /_$1}
#	split=($file)
#	mv "$file" "${split[*]^}"
done

#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0
