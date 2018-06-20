#!/bin/bash
#===============================================================================
#
#          FILE:  Install-DHCP-Server-1.sh
# 
#         USAGE:  ./Install-DHCP-Server-1.sh 
# 
#   DESCRIPTION:  This installs isc-dhcp-server.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  06/20/2018 02:43:55 AM CDT
#      REVISION:  ---
#===============================================================================
sudo apt-get update -y && sudo apt-get upgrade -y

sudo apt-get install isc-dhcp-server -y

wget https://github.com/jenssegers/RTL8188-hostapd/archive/v1.1.tar.gz
tar -zxvf v1.1.tar.gz
cd RTL8188-hostapd-1.1/hostapd
sudo make
sudo make install

echo 'The script will now end. You need to edit the /etc/dhcp/dhcpd.conf file according to the instructions in this folder titled dhcpd.conf.txt.'



sudo vim /etc/dhcp/dhcpd.conf

