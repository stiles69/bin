#!/bin/bash  
#====================================================
#
#          FILE: Install-Docker-113.sh
# 
#         USAGE: ./Install-Docker-113.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/06/2018 05:31
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function InstallDocker ()
{
	curl -sSL https://get.docker.com | sh
	wait
	sudo usermod -aG docker brettsalemink
	wait 
	echo 'Install of Docker completed.'
	echo 'Possible Kernel Features Required'
	curl -L https://raw.githubusercontent.com/docker/docker/master/contrib/check-config.sh | sh
	wait
}	# end Main

function InstallDockerComposeDeb ()
{
	sudo apt-get install docker-compose
	wait
}

function InstallDockerComposeArch ()
{
	sudo pacman -S docker-compose
	wait
}

function GetSystem ()
{
	echo 'What system are you installing docker-compose too? [1.Debian based, 2.Arch based]'
	read SYSTEMANSWER

	case $SYSTEMANSWER in
		1)
		InstallDockerComposeDeb
		;;
		2)
		InstallDockerComposeArch
		;;
	esac
}

Main ()
{
	InstallDocker
	wait
	GetSystem
	wait
}

Main

#==Exit==
exit 0
