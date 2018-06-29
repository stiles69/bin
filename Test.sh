#!/bin/bash - 
#===============================================================================
#
#          FILE: Test.sh
# 
#         USAGE: ./Test.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/28/2018 19:46
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

function TestEmerge ()
{
	echo "This is a test function."
	echo "Trying to install with sudo emerge backupmanager"
	sudo emerge backup-manager

}	# End Function

function Proceed ()
{
	echo "Do you want to proceed to install backup-manager? [Y/n]"
	read PROCEED

	case $PROCEED in
		"Y"|"y")
		TestEmerge
		;;

		"N"|"n")
		exit 0
		;;

		*)
		TestEmerge
		;;

	esac
}	# End Function

function Main ()
{
	Proceed
}	# End Function

Main

#== Exit ==
exit 0



