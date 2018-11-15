#!/bin/bash  
#====================================================
#
#          FILE: Install-BlackArch-Repo.sh
# 
#         USAGE: ./Install-BlackArch-Repo.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/14/2018 22:03
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	# Run https://blackarch.org/strap.sh as root and follow the instructions
	sudo curl -O https://blackarch.org/strap.sh

	# The SHA1 sum should match: 9f770789df3b7803105e5fbc19212889674cd503 strap.sh
	sha1sum strap.sh

	# Set execute bit
	sudo chmod +x strap.sh

	# Run strap.sh
	sudo ./strap.sh

}	# end Main

function InstallTools ()
{
	echo "# To list all of the available tools, run"
	echo "$ sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u"
	
	echo "# To install all of the tools, run"
	"$ sudo pacman -S blackarch"
	
	"# To install a category of tools, run"
	"$ sudo pacman -S blackarch-<category>"
	
	"# To see the blackarch categories, run"
	"$ sudo pacman -Sg | grep blackarch"
}
Main
InstallTools

#===EXIT===
exit 0

