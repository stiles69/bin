#!/bin/bash
#===============================================================================
#
#          FILE:  Test-Trim.sh
#
#         USAGE:  ./Test-Trim.sh
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
# Shell Library
. /home/brettsalemink/lib/sh/funcCAPITALIZEFIRSTLETTER.sh
#===============================================================================
#===============================================================================
#       LOCAL DECLARATIONS

VERSION="1.0"

USAGE="/home/brettsalemink/BashScripts/Capitalize-Filename.sh [No-Options]"
#===============================================================================
#===============================================================================
#   MAIN SCRIPT
#===============================================================================
for file in *
do
	captalizeFirstLetterFilename $file	
done


#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0
