#!/bin/bash
#===============================================================================
#
#          FILE:  Zim-Start-Server.sh
# 
#         USAGE:  ./Zim-Start-Server.sh 
# 
#   DESCRIPTION:  This script indexs then starts Zim webserver.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  03/16/2018 10:23:53 PM CDT
#      REVISION:  ---
#===============================================================================

zim --index Notes

zim --server Notes
