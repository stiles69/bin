#!/bin/bash  
#====================================================
#
#          FILE: Install-Combustion.sh
# 
#         USAGE: ./Install-Combustion.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 09/20/2018 00:22
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	echo 'Download to a temp dir, then move to transmission/web dir and reboot.'
	sudo rm -f release.zip && wget https://github.com/Secretmapper/combustion/archive/release.zip && unzip release.zip


}	# end Main

Main

#===EXIT===
exit 0

