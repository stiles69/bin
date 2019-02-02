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
HOSTER=Slave1
MEGADIR=Backups/$HOSTER
BACKEND="file:///backup"
#-------------------------------------
function Backup ()
{
#	duplicity --no-encryption --name=master $BACKUPDIR mega://brett.salemink@gmail.com@mega.co.nz//Backups/Master
	duplicity --no-encryption --no-compression $BACKUPDIR $BACKEND
}

function RemoveAllButTwo ()
{
	duplicity remove-all-but-n-full 2 --force $BACKEND
	wait
	echo "Done removing older backups."
}

function MegaSync ()
{
	megacopy -l /backup -r $MEGADIR --disable-previews
}

function Main ()
{
	Backup
	wait
	RemoveAllButTwo
	wait
	MegaSync

}	# end Main

Main

#===EXIT===
exit 0

