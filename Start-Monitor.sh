#!/bin/bash
#===============================================================================
#
#          FILE:  Start-Monitor.sh
# 
#         USAGE:  ./Start-Monitor.sh 
# 
#   DESCRIPTION:  This will start Monitor.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  05/23/2018 10:08:36 PM CDT
#      REVISION:  ---
#===============================================================================
SERVER_DIR="/home/brettsalemink/BashScripts/Monitor/"

"/home/brettsalemink/BashScripts/Monitor/public/" "monitor.sh > index.html"

PWD="/home/brettsalemink/BashScripts/Monitor/"

cd $PWD

#echo "The PWD is:"
#echo $PWD

#touch CatResults.txt

#echo "PWD is" + $PWD >> CatResults.txt

. node /home/brettsalemink/BashScripts/Monitor/bin/www

