#!/bin/bash
#===============================================================================
#
#          FILE:  Sync-All-BashScripts.sh
# 
#         USAGE:  ./Sync-All-BashScripts.sh 
# 
#   DESCRIPTION:  This will sync all BashScripts from Antergos and RaspberryPi's.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  05/14/2018 06:18:48 PM CDT
#      REVISION:  ---
#===============================================================================
#   GLOBAL DECLARATIONS
#===============================================================================
declare -rx SCRIPT=${0##*/}                     # the name of this script
declare -rx mkdir='/bin/mkdir'                  # the mkdir(1) command

#===============================================================================
#   SANITY CHECKS
#===============================================================================
if [ -z "$BASH" ] ; then
	printf "$SCRIPT:$LINENO: run this script with the BASH shell\n" >&2
	exit 192
fi

if [ ! -x "$mkdir" ] ; then
	printf "$SCRIPT:$LINENO: command '$mkdir' not available - aborting\n" >&2
	exit 192
fi

#===============================================================================
#   MAIN SCRIPT
#===============================================================================
# --- Body --------------------------------------------------------
#  SCRIPT LOGIC GOES HERE
# -----------------------------------------------------------------#---------------------PROCESS ZIM----------------
#------------------Index Zim-------------------
zim --index /home/brettsalemink/Zim

#-----------------Export Zim------------------
zim --export -O --output /home/brettsalemink/Zim-Export --template RogueDesigns --index-page index -r /home/brettsalemink/Zim-Export

#===========================================STRETCH SYNC===============================================================

#---------------------------------------Start Antergos to Stretch-----------------------------------------------------
rsync -rvz --progress --exclude '.git' /home/brettsalemink/BashScripts/ brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/BashScripts

rsync -rvz --progress --exclude '.git' /home/brettsalemink/Zim/ brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/Zim

rsync -rvz --progress --exclude '.git' /home/brettsalemink/Zim-Export/ brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/Zim-Server/public

rsync -rvz --progress --exclude '.git' /home/brettsalemink/.vim/ brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/.vim
#-----------------------------------------------End--------------------------------------------------------------------

#--------------------------------------Start Stretch to Antergos-------------------------------------------------------
rsync -rvz --progress --exclude '.git' brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/BashScripts/ /home/brettsalemink/BashScripts

rsync -rvz --progress --exclude '.git' brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/.vim/ /home/brettsalemink/.vim

#-----------------------------------------------End--------------------------------------------------------------------

echo 'Done syncing Stretch'

#=============================================END STRETCH SYNC========================================================

#=============================================START RDAD01 SYNC=======================================================
#----------------------------------------Start Antergos to RDADS01-----------------------------------------------------
rsync -rvz --progress --exclude '.git' /home/brettsalemink/BashScripts/ brettsalemink@RDADS01.roguedesigns.us:/home/brettsalemink/BashScripts

rsync -rvz --progress --exclude '.git' /home/brettsalemink/Zim/ brettsalemink@RDADS01.roguedesigns.us:/home/brettsalemink/Zim

rsync -rvz --progress --exclude '.git' /home/brettsalemink/Zim-Export/ brettsalemink@RDADS01.roguedesigns.us:/home/brettsalemink/Zim-Server/public

rsync -rvz --progress --exclude '.git' /home/brettsalemink/.vim/ brettsalemink@RDADS01.roguedesigns.us:/home/brettsalemink/.vim
#----------------------------------------------------End---------------------------------------------------------------

#-----------------------------------------Start RDADS01 to Antergos----------------------------------------------------
rsync -rvz --progress --exclude '.git' brettsalemink@RDADS01.roguedesigns.us:/home/brettsalemink/BashScripts/ /home/brettsalemink/BashScripts

rsync -rvz --progress --exclude '.git' brettsalemink@RDADS01.roguedesigns.us:/home/brettsalemink/.vim/ /home/brettsalemink/BashScripts/.vim

#----------------------------------------------------End----------------------------------------------------------------

echo 'Done syncing RDADS01'
#=====================================================END RDADS01 SYNC====================================================

#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0


