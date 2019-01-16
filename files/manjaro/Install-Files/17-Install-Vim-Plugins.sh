#!/bin/bash 
#====================================================
#
#          FILE: Install-Vim-Plugins.sh
# 
#         USAGE: ./Install-Vim-Plugin.sh
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/15/2018 10:04
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
VIMDIR=$HOME/bin/vim
#-------------------------------------
function Main ()
{
	cd $VIMDIR
	./1-Install-Vim-Bash-Support.sh
	wait
	./2-Install-Vim-CSS.sh
	wait
	./3-Install-Vim-Dockerfile.sh
	wait
	./4-Install-Vim-HTML5-Plugin.sh
	wait
	./5-Install-Vim-JSLibraries.sh
	wait
	./6-Install-Vim-Stylus.sh
	wait
	./7-Install-Vim-Support-Plugin.sh
	wait
	./8-Install-Vim-Vue-Plugin.sh
	wait
	./9-Install-Vim-GoLang.sh
	wait
	./11-Install-Vim-Python-Syntax.sh
	wait
}	# end Main

Main

#===EXIT===
exit 0
