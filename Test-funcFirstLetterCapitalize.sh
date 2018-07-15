#!/bin/bash - 
#===============================================================================
#
#          FILE: Test-funcFirstLetterCapitalize.sh
# 
#         USAGE: ./Test-funcFirstLetterCapitalize.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/15/2018 09:29
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

. $HOME/lib/sh/funcDisplayHostname.sh
. $HOME/lib/sh/funcCapitalizeFirstLetter.sh

function Main ()
{
	echo $(CapitalizeFirstLetter $(DisplayHostname))

}	# end Main

