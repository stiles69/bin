#!/bin/bash  
#====================================================
#
#          FILE: Install-Vim-Support-Plugin.sh
# 
#         USAGE: ./Install-Vim-Support-Plugin.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/15/2018 02:51
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

function Main ()
{

	cd $HOME/.vim/bundle
	git clone https://github.com/vim-scripts/Vim-Support
}	# end Main

Main

# == Exit ==
echo "Exiting"
exit 0	# Always exit properly

