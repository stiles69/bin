#!/bin/bash  
#====================================================
#
#          FILE: Duplicity-Slave1.sh
# 
#         USAGE: ./Duplicity-Slave1.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 02/01/2019 15:43
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
BACKUPDIR=/home/brettsalemink
#-------------------------------------
function Backup ()
{
	duplicity incr --name=slave1 --no-encryption --progress $BACKUPDIR file:///backup 
}

function MegaSync ()
{
	megacopy -l /backup -r /Root/Backups/Slave1 --disable-previews	
}

function Main ()
{
	Backup
	wait
	MegaSync
	wait
}	# end Main

Main

#===EXIT===
exit 0

