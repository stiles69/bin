#!/bin/bash  
#====================================================
#
#          FILE: Show-OS.sh
# 
#         USAGE: ./Show-OS.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/15/2018 20:30
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------

#---------- GLOBAL VARIABLES ---------
OS="$(uname -s)"

#-------------------------------------
function Main ()
{
	if [ "$OS" = "FreeBSD" ]
	then
		echo "This Is FreeBSD"
	elif [ "$OS" = "CYGWIN_NT-5.1" ]
	then
		echo "This is Cygwin"
	elif [ "$OS" = "SunOS" ]
	then
		echo "This is Solaris"
	elif [ "$OS" = "Darwin" ]
	then
		echo "This is Mac OSX"
	elif [ "$OS" = "Linux" ]
	then
		echo "This is Linux"
	else
		echo "Failed to identify this OS"
	fi
}	# end Main

Main

#===EXIT===
exit 0

