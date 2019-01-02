#!/bin/bash  
#====================================================
#
#          FILE: Make-Default-Directories.sh
# 
#         USAGE: ./Make-Default-Directories.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 05/07/18 11:32
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

function ProceedYes ()
{
	if [ -d $HOME/development ]
	then
		echo "$HOME/development already exists."
	else
		mkdir $HOME/development
	fi	

	if [ -d $HOME/development/stiles69 ]
	then
		echo "$HOME/development/stiles69 already exists."
	else
		mkdir -p $HOME/development/stiles69
	fi

	if [ -d $HOME/development/Docker ]
	then
		echo "$HOME/development/Docker directory already exists."
	else
		mkdir -p $HOME/development/Docker
	fi

	if [ -d $HOME/Downloads ]
	then
		echo "$HOME/Downloads directory already exists."
	else
		mkdir $HOME/Downloads
	fi

	if [ -d $HOME/development/GitLab ]
	then
		echo "$HOME/development/GitLab directory already exists."
	else
		mkdir -p $HOME/development/GitLab
	fi

}	


function Main ()
{
	ProceedYes
}	

Main 

# == Exit ==
exit 0
