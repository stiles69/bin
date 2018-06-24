#!/bin/bash
#===============================================================================
#
#          FILE:  Start-Wireless-AP-2.sh
# 
#         USAGE:  ./Start-Wireless-AP-2.sh 
# 
#   DESCRIPTION:  Starts AP
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  06/20/2018 03:01:25 AM CDT
#      REVISION:  ---
#===============================================================================

sudo service isc-dhcp-server start
sudo service hostapd start

sudo update-rc.d hostapd enable 
sudo update-rc.d isc-dhcp-server enable

sudo sh -c "iptables-save > /etc/iptables.ipv4.nat"


