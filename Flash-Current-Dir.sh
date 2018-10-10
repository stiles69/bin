#!/bin/bash 
#====================================================
#
#          FILE: Flash-Current-Dir.sh
# 
#         USAGE: ./Flash-Current-Dir.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/10/2018 04:35
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	flash \
		--hostname slave1.roguedesigns.us \
		--userdata ./user-data.yml \
		https://github.com/hypriot/image-builder-rpi/releases/download/v1.9.0/hypriotos-rpi-v1.9.0.img.zip
}	# end Main

Main

#===EXIT===
exit 0

