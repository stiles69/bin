#!/bin/bash  
#====================================================
#
#          FILE: Config-Git.sh
# 
#         USAGE: ./Config-Got.sh
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
	git config --global user.name stiles69
	git config --global user.email brett.salemink@gmail.com
}	# end Main

Main

#===EXIT===
exit 0
