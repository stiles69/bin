#!/bin/bash
#===============================================================================
#
#          FILE:  Start-Zim-Server.sh
# 
#         USAGE:  ./Start-Zim-Server.sh 
# 
#   DESCRIPTION:  This will remote into another machine and start express server.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  05/23/2018 09:20:14 PM CDT
#      REVISION:  ---
#===============================================================================
echo 'What host do you want to start Node Express Webserver? (FQDN or i.p. 10.0.0.1):'
read INPUTHOST
ssh brettsalemink@$INPUTHOST 'cd /home/brettsalemink/Zim-Server/; npm run start'
