#!/bin/bash  
#===============================================================================
#
#          FILE: Test-funcUpdateSystem.sh
# 
#         USAGE: ./Test-funcUpdateSystem.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/04/2018 19:52
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

#---------- SOURCED ---------
. $HOME/lib/sh/funcUpdateSystem.sh	# This function is called by UpdateSystem [1 for Arch, 2 for Debian, 3 for Gentoo]

function Main ()
{
	UpdateSystem 1 
}	# end Main

Main

#===EXIT===
exit 0
