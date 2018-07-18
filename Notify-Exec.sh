#!/bin/bash  
#===============================================================================
#
#          FILE: Notify-Exec.sh
# 
#         USAGE: ./Notify-Exec.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/18/2018 09:01
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cd $HOME/Test
for file in * 
do
	echo "Moving file $file" >> $HOME/Notify-Exec.txt
	mv "$file" $HOME/
done


