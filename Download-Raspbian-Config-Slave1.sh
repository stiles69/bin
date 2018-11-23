#!/bin/bash  
#====================================================
#
#          FILE: Download-Raspbian-Config-Slave1.sh
# 
#         USAGE: ./Download-Raspbian-Config-Slave1.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/23/2018 05:53
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	wget https://gitlab.com/brett.salemink/raspbian-config/-/archive/master/raspbian-config-master.zip
	unzip raspbian-config-master.zip
	mv raspbian-config-master ./raspbian-config
	rm raspbian-config-master.zip
}	# end Main

Main

#===EXIT===
exit 0

