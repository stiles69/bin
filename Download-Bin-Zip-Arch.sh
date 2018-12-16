#!/bin/bash 
#====================================================
#
#          FILE: Download-Bin.sh
# 
#         USAGE: ./Download-Bin.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/26/2018 18:19
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------

#---------- GLOBAL VARIABLES ---------
DOWNLOADDIR=$HOME
#-------------------------------------
function Main ()
{
	sudo pacman -Syu
	sudo pacman -S wget
	sudo pacman -S unzip

	cd $DOWNLOADDIR
	wget https://github.com/stiles69/bin/archive/master.zip
	wait
	unzip $DOWNLOADDIR/master.zip
	sudo chmod +x $DOWNLOADDIR/bin-master
	sudo rm -r $DOWNLOADDIR/master.zip
}	# end Main

Main

#===EXIT===
exit 0

