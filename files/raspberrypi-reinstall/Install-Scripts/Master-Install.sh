#!/bin/bash  
#====================================================
#
#          FILE: Master-Install.sh
# 
#         USAGE: ./Master-Install.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/17/2018 00:51
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
    ./1-Update-Upgrade.sh
    wait
    ./2-Create-User.sh
    wait
    ./3-Install-SSH-Keys.sh
    wait  
}	# end Main

Main

#===EXIT===
exit 0

