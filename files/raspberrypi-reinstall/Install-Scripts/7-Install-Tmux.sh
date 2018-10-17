#!/bin/bash  
#====================================================
#
#          FILE: Install-Tmux.sh
# 
#         USAGE: ./Install-Tmux.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 08:38
#      REVISION:  ---
#====================================================

set -o nounset                              # Treat unset variables as an error
. $HOME/lib/sh/funcInstall.sh


SOFTWAREINSTALL="tmux"

function ProceedYes ()
{
	Install	$SOFTWAREINSTALL
}	

function ProceedNo ()
{
	exit 0 
}	

function Main ()
{
	ProceedYes
}	

Main 

# == Exit ==
exit 0	

