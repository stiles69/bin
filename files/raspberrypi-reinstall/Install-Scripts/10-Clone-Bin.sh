#!/bin/bash
#====================================================
#
#          FILE:  0-Bin-Install.sh
# 
#         USAGE:  ./0-Bin-Install.sh 
# 
#   DESCRIPTION:  This installs git and clones bin.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  06/20/2018 08:30:04 AM CDT
#      REVISION:  ---
#====================================================

function CloneBin ()
{
		cd $HOME		
		git clone git@github.com:stiles69/bin.git
	
} 	# end function	

function Main ()
{
	CloneBin
}	# End Function

Main

# === Exit ===
exit 0
