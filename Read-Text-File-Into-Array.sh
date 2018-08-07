#!/bin/bash - 
#===============================================================================
#
#          FILE: Read-Text-File-Into-Array.sh
# 
#         USAGE: ./Read-Text-File-Into-Array.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/07/2018 04:28
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
IFS=$'\n' read  -d'' -r -a inlines  < $HOME/bin/allmachines/Hosts.txt
IFS=$'\n' read  -d'' -r -a  outlines < testoutput
counter=0
cat testinput | while read line; 
do    
	echo "$((${inlines[$counter]}-${outlines[$counter]}))"    
	counter=$(($counter+1))
done
