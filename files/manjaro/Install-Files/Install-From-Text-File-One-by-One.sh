#!/bin/bash  
#=====================================================
#
#          FILE: Install-Needed-Native-Packages.sh
# 
#         USAGE: ./Install-Needed-Native-Packages.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/06/2018 18:41
#      REVISION:  ---
#=====================================================
set -o nounset                              # Treat unset variables as an error
set e
#---------- SOURCED ---------

#----------------------------

#---------- GLOBAL VARIABLES ---------
#PACKAGELIST=/home/brettsalemink/bin/files/manjaro/Installed-Package-List.txt
#-------------------------------------
function ReadPackageList ()
{
	PACKAGELIST="$1"
	counter=0
	readarray aur < "$PACKAGELIST"
	cat "$PACKAGELIST" | while read myline 
	do
    		counter=$(($counter+1))
	done
}	# end Main

function InstallPackageList ()
{
	tLen=${#aur[@]}
	# use for loop read all nameservers
	for (( i=0; i<${tLen}; i++ ));
	do
  		echo "Do you want to install ${aur[$i]}? [Y/n]"
		read INSTALLAUR
		case $INSTALLAUR in
			Y|y)
			yay -S --needed --noconfirm ${aur[$i]}
			wait
			;;
			N|n)
			echo ${aur[$i]} >> $PACKAGELIST
			wait
			;;
			*)
			echo "Unexpected input, skipping package ${aur[i]}."
			echo ${aur[$i]} >> $PACKAGELIST
			;;
		esac
	done	
}	# end function

function Main ()
{
	ReadPackageList
	InstallPackageList
}

Main

#===EXIT===
exit 0
