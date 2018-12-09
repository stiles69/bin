#!/bin/bash 
#====================================================
#
#          FILE: *-Install-Raspberry-Pi.sh
# 
#         USAGE: ./*-Install-Raspberry-Pi.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 12/08/2018 22:17
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	./1-Install-Git.sh
	wait
	./4-Install-Vim.sh
	wait
	./5-Install-Oh-My-Zsh.sh
	wait
	cp $HOME/bin-master/files/home/brettsalemink/.zshrc $HOME/
	wait
	cp $HOME/bin-master/files/home/brettsalemink/.ssh/config $HOME/.ssh/
	wait
	cp $HOME/bin-master/files/home/brettsalemink/.zlogout $HOME/
	wait
	./8-Make-Default-Directories.sh
	wait
	./9-Clone-Bin.sh
	wait
	./10-Clone-Sh.sh
	wait
	sudo pacman -S mosh
	wait

}	# end Main

Main

#===EXIT===
exit 0

