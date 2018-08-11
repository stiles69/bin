#!/bin/bash
#=========================================================
#
#          FILE: Interate-Each-Line-Text-File.sh
# 
#         USAGE: ./Interate-Each-Line-Text-File.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/11/2018 18:05
#      REVISION:  ---
#=========================================================
set -o nounset                              # Treat unset variables as an error
#---------- SOURCED ---------

#----------------------------

#---------- GLOBAL VARIABLES ---------
LINE=' '

#-------------------------------------
function Main ()
{
	for p in (testinputfile.txt)
	do
    		echo "${p}"
		yaourt -S --needed "${p}"
	done
}	# end Main

Main

#===EXIT===
exit 0

