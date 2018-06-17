#!/bin/bash
#===============================================================================
#
#          FILE:  2-AddUsers
#         USAGE:  
# 
#   DESCRIPTION:  Reinstalls my user.
# 
#       OPTIONS:  None
#  REQUIREMENTS:  None
#          BUGS:  None
#         NOTES:  
#        AUTHOR:  Brett Salemink (BS), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  12/04/2017 04:02:50 PM CST
#      REVISION:  
#===============================================================================`

cd ~/
groups > groups.txt
sed 's/ /,/g' groups.txt > groups2.txt
sudo useradd -m brettsalemink
sudo usermod -aG $(cat groups2.txt) brettsalemink
sudo passwd brettsalemink
