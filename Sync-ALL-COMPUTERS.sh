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
# -----------------------------------------------------------------

rsync -rvz --progress --exclude '.git' /home/brettsalemink/BashScripts/ brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/BashScripts

rsync -rvz --progress --exclude '.git' /home/brettsalemink/.vim/ brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/.vim

rsync -rvz --progress --exclude '.git' /home/brettsalemink/Notes/ brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/Notes

##############################################################################################################################################

rsync -rvz --progress --exclude '.git' brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/BashScripts/ /home/brettsalemink/BashScripts

rsync -rvz --progress --exclude '.git' brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/.vim/ /home/brettsalemink/.vim

rsync -rvz --progress --exclude '.git' brettsalemink@stretch.roguedesigns.us:/home/brettsalemink/Notes/ /home/brettsalemink/Notes

echo 'Done syncing Stretch'

#==============================================================================================================================================
rsync -rvz --progress --exclude '.git' /home/brettsalemink/BashScripts/ brettsalemink@stiles.roguedesigns.us:/home/brettsalemink/BashScripts

rsync -rvz --progress --exclude '.git'/home/brettsalemink/.vim/ brettsalemink@stiles.roguedesigns.us:/home/brettsalemink/.vim

rsync -rvz --progress --exclude '.git' /home/brettsalemink/Notes/ brettsalemink@stiles.roguedesigns.us:/home/brettsalemink/Notes

################################################################################################################################################

rsync -rvz --progress --exclude '.git' brettsalemink@stiles.roguedesigns.us:/home/brettsalemink/BashScripts/ /home/brettsalemink/BashScripts

rsync -rvz --progress --exclude '.git' brettsalemink@stiles.roguedesigns.us:/home/brettsalemink/.vim/ /home/brettsalemink/.vim

rsync -rvz --progress --exclude '.git' brettsalemink@stiles.roguedesigns.us:/home/brettsalemink/Notes/ /home/brettsalemink/Notes

echo 'Done syncing Stiles'
#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0


