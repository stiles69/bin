#!/bin/bash
#===============================================================================
#
#          FILE:  Update-Stretch.sh
# 
#         USAGE:  ./Update-Stretch.sh 
# 
#   DESCRIPTION:  This will update Stretch and sync BashScripts.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  05/15/2018 04:07:22 AM CDT
#      REVISION:  ---
#===============================================================================
#   MAIN SCRIPT
#===============================================================================
echo "Starting Update"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y


cd '/home/brettsalemink/bin'
git pull

cd '/home/brettsalemink/bin'
git add .
git commit -m 'Update'
git push

echo "Finished Update"
#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0

