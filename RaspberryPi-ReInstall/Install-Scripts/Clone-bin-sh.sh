#!/bin/bash
#===============================================================================
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
#===============================================================================
# Include Lib
. ~/lib/sh/funcOS.sh

# Use Function
#funcOS

echo 'Do you want to pull down bin and lib/sh from repo? (Y/n)'
read PROCEED

case $PROCEED in
	
	"Y" | "y")
	cd ~/
	git clone https://github.com/stiles69/bin.git
	wait
	echo '~/bin directory installed.'
	cd ~/lib
	git clone git@github.com:stiles69/sh.git
	wait
	echo '~/lib/sh installed'
	;;

	"N" | "n")
	exit 0

	*)
	exit 0
	;;

esac

cp ~/bin/RaspberryPi-ReInstall/Files/home/brettsalemink/.zshrc ~/
echo "Finished copying .zshrc to home directory. Check ~/.zshrc to ensure PATH is set. Line should read export PATH=$HOME/bin:$PATH and export PATH=$HOME/lib/sh:$PATH"

exit 0

