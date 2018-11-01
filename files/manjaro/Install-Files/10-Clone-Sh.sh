#!/bin/bash  
#====================================================
#
#          FILE: Clone-Sh.sh
# 
#         USAGE: ./Clone-Sh.sh
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/10/2018 00:23
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	cd $HOME
	mkdir $HOME/lib
	git clone git@github.com:stiles69/sh.git
}	# end Main

Main

#===EXIT===
exit 0
