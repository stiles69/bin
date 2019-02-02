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
HOSTER=Slave3
MEGADIR=/Root/Backups/$HOSTER
<<<<<<< HEAD
#BACKEND="mega://brett.salemink@gmail.com@mega.co.nz//Backups/$HOSTER"
=======
>>>>>>> 7e507236107aec7a37c7b474f1cdcdfeb0661d32
BACKEND="file:///backup"
#-------------------------------------
function Backup ()
{
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

