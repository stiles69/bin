#!/bin/bash  
#====================================================
#
#          FILE: Master-Install2.sh
# 
#         USAGE: ./Master-Install2.sh 
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
    ./0-Install-Git.sh
    wait
    ./9-Clone-Bin.sh
    wait
    ./10-Clone-Sh.sh
    wait
    ./4-Install-Vim.sh
    wait
    ./5-Install-Oh-My-Zsh.sh
    wait
    ./7-Install-Tmux.sh
    wait
    ./8-Make-Default-Directories.sh
    wait
    echo 'Installation Complete'
}	# end Main

Main

#===EXIT===
exit 0