#!/bin/bash  
#====================================================
#
#          FILE: Backup-Docker-Master.sh
# 
#         USAGE: ./Backup-Docker-Master.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 12/25/2018 19:30
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	duplicity -v 1 full --no-encryption /home/brettsalemink/development/Docker/ mega://brett.salemink@gmail.com@mega.co.nz/Data/Backups/
}	# end Main

Main

#===EXIT===
exit 0

