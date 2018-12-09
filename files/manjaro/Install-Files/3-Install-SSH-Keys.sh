#!/bin/bash 
#===============================================================================
#
#          FILE: Install-SSH-Keys.sh
# 
#         USAGE: ./Install-SSH-Keys.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 08:25
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

mkdir ~/.ssh

ssh-keygen -t rsa -b 4096 -C SLAVE1
wait 
cat ~/.ssh/id_rsa.pub

exit 0
