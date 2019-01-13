#!/bin/bash  
#====================================================
#
#          FILE: Install-PYENV-Installer.sh
# 
#         USAGE: ./Install-PYENV-Installer.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/12/2019 15:46
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	curl https://pyenv.run | bash
}	# end Main

Main

#===EXIT===
exit 0

