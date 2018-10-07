#!/bin/bash - 
#===============================================================================
#
#          FILE: Test.sh
# 
#         USAGE: ./Test.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/07/2018 16:58
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

main ()
{
readonly private_key='$HOME/.ssh/id_rsa' 
readonly command='echo test' 
readonly ip='10.0.0.5' 
readonly user='brettsalemink' 
readonly port='22' 
echo "$command" | ssh \
	-i ${private_key} \
	-p ${port} \
	${user}:${ip}
}

main

#==EXIT==
exit
