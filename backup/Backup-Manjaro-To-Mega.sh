#!/bin/bash  
#====================================================
#
#          FILE: Backup-Manjaro-To-Mega.sh
# 
#         USAGE: ./Backup-Manjaro-To-Mega.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/29/2018 07:19
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
SRCDIR=/home/brettsalemink
EXCLUDEDIR=/home/brettsalemink/.*
DESTDIR=/backups/manjaro/Manjaro-Home-Backup/
MEGANAME=brett.salemink@gmail.com
SIGNKEY=duplicity@roguedesigns.us

#-------------------------------------
function Main ()
{

}	# end Main

Main

#===EXIT===
exit 0

