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
function InstallGitDeb ()
{
	echo "Installing For Debian/Based."    
	sudo apt-get install git -y
}	

function ConfigureGitUser ()
{
	git config --global user.name "stiles69"
	git config --global user.email "brett.salemink@gmail.com"	
}	

function Main ()
{
	InstallGitDeb
	wait
	ConfigureGitUser
	wait
}	

Main

# == exit ==
exit 0
