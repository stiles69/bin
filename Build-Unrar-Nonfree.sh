#!/bin/bash  
#====================================================
#
#          FILE: Build-Unrar-Nonfree.sh
# 
#         USAGE: ./Build-Unrar-Nonfree.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/19/2018 22:42
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	echo "deb-src http://archive.raspbian.org/raspbian/ stretch main contrib non-free rpi" >> /etc/apt/sources.list

	mkdir $HOME/Temp-Build-Dir

	apt-get build-dep unrar-nonfree
	apt-get source -b unrar-nonfree


}	# end Main

Main

#===EXIT===
exit 0

