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
	sudo cp $HOME/bin/Build-UnRar/source.list /etc/apt/

	mkdir $HOME/Temp-Build-Dir

	sudo apt-get build-dep unrar-nonfree
	sudo apt-get source -b unrar-nonfree


}	# end Main

Main

#===EXIT===
exit 0

