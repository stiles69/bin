#!/bin/bash - 
#===============================================================================
#
#          FILE: Test-funcDisplayHostname.sh
# 
#         USAGE: ./Test-funcDisplayHostname.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/15/2018 08:44
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. $HOME/lib/sh/funcDisplayHostname.sh

function Main ()
{
	echo $(DisplayHostname)
}	# end Main
Maib
#===EXIT====
exit 0
