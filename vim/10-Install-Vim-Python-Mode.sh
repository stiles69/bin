#!/bin/bash 
#====================================================
#
#          FILE: -Install-Vim-Python-Mode.sh
# 
#         USAGE: ./-Install-Vim-Python-Mode.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/15/2018 08:22
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
function Main ()
{

	cd ~/.vim/bundle
	git clone --recursive https://github.com/python-mode/python-mode.git	
}	# end Main

Main

#===EXIT===
exit 0

