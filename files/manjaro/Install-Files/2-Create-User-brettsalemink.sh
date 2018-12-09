#!/bin/bash  
#=========================================================
#
#          FILE: 1-Create-User-brettsalemink.sh
# 
#         USAGE: ./1-Create-User-brettsalemink.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/01/2018 18:17
#      REVISION:  ---
#=========================================================

set -o nounset                              # Treat unset variables as an error

function GetCurrentGroups ()
{
	cd ~/
	groups > groups.txt
	sed 's/ /,/g' groups.txt > groups2.txt
}	# end function

function MakeUser ()
{
	echo "What is the username for the new user?"
	read USERNAME
	sudo useradd -m "$USERNAME"
	sudo passwd "$USERNAME"
	sudo usermod -aG $(cat groups2.txt) "$USERNAME"
	sudo usermod -aG sudo "$USERNAME"

}	# end function

function CleanUp ()
{
	cd ~/
	rm groups.txt
	rm groups2.txt
}	# end function

function Main ()
{
	GetCurrentGroups
		MakeUser
		CleanUp
}	# end function

Main

#==EXIT==
exit 0
