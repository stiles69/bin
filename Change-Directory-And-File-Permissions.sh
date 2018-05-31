#!/bin/bash
#===============================================================================
#
#          FILE:  Change-Directory-And-File-Permissions.sh
# 
#         USAGE:  ./Change-Directory-And-File-Permissions.sh 
# 
#   DESCRIPTION:  This prompts user for what
#		  permisssions and filepath to
#		  change permissions on.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  sudo
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink
#		  (brett.salemink@gmail.com) 
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  12/02/18 23:10:29 CST
#      REVISION:  ---
#===============================================================================


read -p "What would you like to set the permissions to? (ex. 777 owner, group, and all others have Read, Write, and Exexute permissions.) " setpermissions

read -p "What would you like to set the owner to? (ex. brettsalemink:users sets the owner to user brettsalemink and group to users.) " setowner

read -p "What file path do you want? (ex. /home/brettsalemink/.ssh will change .ssh directory and all files and subdirectories in .ssh) " folderpath 

sudo chown -R $setowner $folderpath
sudo chmod -R $setpermissions $folderpath
