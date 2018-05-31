#!/bin/bash
#===============================================================================
#
#          FILE:  Start-Emby.sh
# 
#         USAGE:  ./Start-Emby.sh 
# 
#   DESCRIPTION:  This will stop transmission and start emby.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  05/16/2018 06:41:52 PM CDT
#      REVISION:  ---
#==========================MAIN SCRIPT==================================
sudo systemctl stop transmission-daemon.service
wait
sudo systemctl start emby-server.service
wait
sudo systemctl status transmission-daemon.service
wait
sudo systemctl status emby-server.service
wait
#==========================END MAIN SCRIPT==============================

#======================= STATISTICS / CLEANUP ==========================


#==========================END STATISTICS / CLEANUP=====================
exit 0


