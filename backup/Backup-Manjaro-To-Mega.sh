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
SRCDIR="/home/brettsalemink"
EXCLUDEDIR1="/home/brettsalemink/.*"
DESTDIR="/backups/manjaro/Manjaro-Home-Backup"
MEGANAME="brett.salemink@gmail.com"
SIGNKEY="duplicity@roguedesigns.us"
MEGAEXT="mega.co.nz"
DUPOPT1="--progress"
DUPOPT2="--encrypt-key=$SIGNKEY"
FINALDEST="mega://$MEGANAME@$MEGAEXT$DESTDIR"
DUPCOMMAND="duplicity $DUPOPT1 $DUPOPT2 $SRCDIR $FINALDEST"
#-------------------------------------
function Main ()
{
	"$DUPCOMMAND"
}	# end Main

Main

#===EXIT===
exit 0

