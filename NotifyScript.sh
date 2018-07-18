#!/bin/bash  
#===============================================================================
#
#          FILE: NotifyScript.sh
# 
#         USAGE: ./NotifyScript.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/18/2018 06:39
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

while true
do    
	fileName=$(inotifywait -r -e create $HOME/Test | sed -r 's/^.*CREATE(,ISDIR)*\s+(.*)$/\2/g')    
	echo "New file"
done

