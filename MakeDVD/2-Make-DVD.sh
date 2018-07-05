#!/bin/bash
#===============================================================================
#
#          FILE:  Make-DVD-Part-1.sh# 
#         USAGE:  
# 
#   DESCRIPTION:  Converts Movie to DVD.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES: 
#        AUTHOR:  Brett Salemink (BS), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  12/04/2017 06:39:37 PM CST
#      REVISION:  ---
#===============================================================================
#   MAIN SCRIPT
#===============================================================================

THEBASEVIDEONAME=DirectoryOne

mkdir $THEBASEVIDEONAME

dvdauthor -o DirectoryOne -t $1

export VIDEO_FORMAT=NTSC

dvdauthor -o DirectoryOne -T


#==============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0

