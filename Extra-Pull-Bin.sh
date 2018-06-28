#!/bin/bash
#===============================================================================
#
#          FILE:  Extra-Pull-Bin.sh
# 
#         USAGE:  ./Extra-Pull-Bin.sh 
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
#===============================================================================
# Include Lib
#. ~/lib/sh/funcOS.sh

# Use Function
#funcOS
function Proceed () 
{
	echo "This will clone the bin directory using https, into the current directory. To you wish to proceed? [Y/n]"
	read PROCEED

	case $PROCEED in
	"Y"|"y")
	Pullbin	
	;;

	"N"|"n")
	exit 0
	;;

	*)
	Pullbin
	;;
esac
}

function Main () 
{
	Proceed	
}	# End Function Main

function Pullbin () 
{
	git clone https://github.com/stiles69/bin.git
}	# End Function Pullbin




#============		End		===========
exit 0

