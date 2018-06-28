#!/bin/bash  
#===============================================================================
#
#          FILE: Install-Vim.sh
# 
#         USAGE: ./Install-Vim.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 09:27
#      REVISION:  ---
#===============================================================================

set -o nounset # Treat unset variables as an error


function InstallerDeb ()
{
	sudo apt-get update -y && sudo apt-get upgrade -y
	sudo apt-get install vim -y
}	# End Function

function InstallerArch ()
{
	sudo pacman -S vim
}	# End Function

function Proceed ()
{
	echo "This will install vim. Is this system Arch or
	Debian based? [1.Arch|2.Debian|3.Do Not Install]"
	read PROCEED

	case $PROCEED in
		1)
		InstallerArch
		;;

		2)
		InstallerDeb
		;;

		*)
		exit
		;;
	esac

}	# End Function

function InstallerBashSupport ()
{
echo 'Do you want to install Vim Bash-Support? (Y/n)'
read PROCEED

case $PROCEED in

	"Y" | "y")
	~/bin/Install-Vim-Bash-Plugin.sh
	;;

	"N" | "n")
       	exit 0
	;;

	*)
	~/bin/Install-Vim-Bash-Plugin.sh
	;;

esac

echo 'Installation Complete'
}	# End Function

function Main ()
{
	Proceed
	InstallerBashSupport
}	# End Function

Main
# Exit
exit 0 




