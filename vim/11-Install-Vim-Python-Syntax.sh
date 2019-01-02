#!/bin/bash 
#====================================================
#
#          FILE: Install-Vim-Python-Syntax.sh
# 
#         USAGE: ./Install-Vim-Python-Syntax.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/15/2018 08:34
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
function Main ()
{
	
	cd ~/.vim/bundle
	git clone https://github.com/hdima/python-syntax
}	# end Main

Main

#===EXIT===
exit 0

