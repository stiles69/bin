#!/bin/bash
#===============================================================================
#
#          FILE:  build-raspberrypi-server.sh
# 
#         USAGE:  ./build-raspberrypi-server.sh
# 
#   DESCRIPTION:  Builds a raspberrypi server.
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
#===============================================================================

sudo apt-get install devscripts debhelper cmake libldap2-dev libgtkmm-3.0-dev libarchive-dev libcurl4-opens intltool gksu

mkdir ~/ras-server

cd ~/ras-server

git clone --depth 1 https://github.com/raspberrypi/piserver.git

cd piserver
debuild -uc -us

