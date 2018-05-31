#!/bin/bash
#===============================================================================
#
#          FILE:  Rsync-Just-Phone-Bashscripts.sh
# 
#         USAGE:  ./Rsync-Just-Phone-Bashscripts.sh 
# 
#   DESCRIPTION:  This syncs Bashscripts to phone.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  03/16/2018 10:31:03 PM CDT
#      REVISION:  ---
#===============================================================================


rsync -rvz -e 'ssh -p 2222' --progress --delete /home/brettsalemink/BashScripts/ brettsalemink@192.168.1.5:/storage/emulated/0/home/brettsalemink/BashScripts/
