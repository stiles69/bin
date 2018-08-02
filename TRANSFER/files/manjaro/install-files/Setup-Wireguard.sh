#!/bin/bash - 
#===============================================================================
#
#          FILE: Setup-Wireguard.sh
# 
#         USAGE: ./Setup-Wireguard.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/02/2018 06:38
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

function GenerateKey ()
{

	umask 077
	cd ~
	wg genkey | tee privatekey | wg pubkey > publickey
}	# end function

function Main ()
{
	GenerateKey
}	# end function

Main

#===EXIT===
exit 0
