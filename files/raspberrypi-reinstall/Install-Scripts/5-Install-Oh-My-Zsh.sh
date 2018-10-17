#!/bin/bash
#====================================================
#
#          FILE:  3-Install-Packages# 
#         USAGE:  
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  None
#  REQUIREMENTS:  None
#          BUGS:  None
#         NOTES:  
#        AUTHOR:  Brett Salemink (BS), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  12/04/2017 04:02:50 PM CST
#      REVISION:  
#====================================================

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function InstallZSH ()
{
	sudo apt-get install zsh
}

function InstallOhMyZSH ()
{
	#Install oh-my-zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	wait
	# Copy default .zshrc file to home
	cp $HOME/bin/files/home/brettsalemink/.zshrc $HOME/.zshrc
	wait
	echo 'Oh My ZSH installed.'

}

function Main ()
{
	InstallZSH
	wait
	InstallOhMyZSH
	wait
}	# end Main

Main

#===EXIT===
exit 0
