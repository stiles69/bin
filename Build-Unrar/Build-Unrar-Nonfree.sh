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
DIR="$PWD"
#-------------------------------------
function Main ()
{
	mkdir $DIR/Temp-Build-Dir
	cd $DIR/Temp-Build-Dir
	sudo cp ~/bin/Build-Unrar/unrar.list /etc/apt/sources.list.d/
	
	sudo apt-get update
	sudo apt-get build-dep unrar-nonfree
	sudo apt-get source -b unrar-nonfree

}	# end Main

Main

#===EXIT===
exit 0

