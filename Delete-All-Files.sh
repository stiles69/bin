#!/bin/bash 
#====================================================
#
#          FILE: Delete-All-Files.sh
# 
#         USAGE: ./Delete-All-Files.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/03/2018 18:19
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	echo "This will delete all files and folders. Do you want to Proceed? [Y/n]"
	read PROCEED

	case $PROCEED in
		Y|y)
		find . -name "*" -delete
		;;
		N|n)
		echo "Exiting ..."
		exit 0
		;;
		*)
		find . -name "*" -delete
		;;
	esac
}	# end Main

Main

#===EXIT===
exit 0

