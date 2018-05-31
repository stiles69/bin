#!/bin/bash
#===============================================================================
#
#          FILE:  RSYNC-BashScripts.sh
# 
#         USAGE:  ./RSYNC-BashScripts.sh 
# 
#   DESCRIPTION:  This syncs BashScripts to all.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  03/03/2018 12:58:56 AM CST
#      REVISION:  1.0
#===============================================================================

rsync -avz --progress --delete /home/brettsalemink/BashScripts/ brettsalemink@192.168.1.4:/home/brettsalemink/BashScripts/

wait

##rsync -avz --progress --delete /home/brettsalemink/BashScripts/ brettsalemink@192.168.1.9:/home/brettsalemink/BashScripts/

wait

rsync -rvz -e 'ssh -p 2222' --progress --delete /home/brettsalemink/BashScripts/ brettsalemink@192.168.1.5:/storage/emulated/0/home/brettsalemink/BashScripts/
