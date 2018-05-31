#!/bin/bash
#===============================================================================
#
#          FILE:  List-Users.sh
# 
#         USAGE:  ./List-Users.sh 
# 
#   DESCRIPTION:  This will list all users on a machine.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  05/20/2018 12:13:22 PM CDT
#      REVISION:  ---
#===============================================================================

ssh brettsalemink@RDADS01.roguedesigns.us 'cut -d: -f1 /etc/passwd > Users-RDADS01-List.txt'
scp brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/Users-RDADS01.Listtxt /home/brettsalemink/
ssh brettsalemink@RDADS01.roguedesigns.us 'rm Users-RDADS01-List.txt'

