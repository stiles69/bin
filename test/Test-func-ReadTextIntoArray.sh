#!/bin/bash - 
#===============================================================================
#
#          FILE: Test-func-ReadTextIntoArray.sh
# 
#         USAGE: ./Test-func-ReadTextIntoArray.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/11/2018 17:31
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

#---------- SOURCED ---------
. $HOME/lib/sh/funcReadTextFileIntoArray.sh
#----------------------------

#---------- GLOBAL VARIABLES ---------
LINE=' '

#-------------------------------------
function Main ()
{
	MyArray="${ReadTextFileIntoArray}"
	MYARRAYTOTALCOUNT=${#MyArray[@]}
	for i in {1..MYARRAYTOTALCOUNT}
		do
			echo ${MyArray[$i]}
		done


}	# end Main

Main

#===EXIT===
exit 0

