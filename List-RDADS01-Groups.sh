#!/bin/bash
#===============================================================================
#
#          FILE:  List-Groups.sh
# 
#         USAGE:  ./List-Groups.sh 
# 
#   DESCRIPTION:  Backups home directory to Backups.
# 
#       OPTIONS:  None
#  REQUIREMENTS:  None
#          BUGS:  None
#         NOTES:  Need to specify server address as second arguement. 
#        AUTHOR:  Brett Salemink (BS), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  12/04/2017 04:02:50 PM CST
#      REVISION:  
#===============================================================================
ssh brettsalemink@RDADS01.roguedesigns.us 'cut -d: -f1 /etc/group > Groups-RDADS01-List.txt'
scp brettsalemink@RDADS01.roguedesigns.us:/home/brettsalemink/Groups-RDADS01-List.txt /home/brettsalemink/
ssh brettsalemink@RDADS01.roguedesigns.us 'rm Groups-RDADS01-List.txt'

