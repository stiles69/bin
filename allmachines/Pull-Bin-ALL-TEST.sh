#!/bin/bash  
#=========================================================
#
#          FILE: Pull-Bin-ALL-TEST.sh
# 
#         USAGE: ./Pull-Bin-ALL-TEST.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/07/2018 02:15
#      REVISION:  ---
#=========================================================
set -o nounset                              # Treat unset variables as an error
#---------- SOURCED ---------
. $HOME/lib/sh/funcRR.sh
#----------------------------

#---------- GLOBAL VARIABLES ---------
LINE=' '

#-------------------------------------
function Main ()
{
	rr $HOME/bin/allmachines/Hosts.txt	
}	# end Main

function rr ()
{
	while IFS='' read -r line || [[ -n "$line" ]]; 
	do    
		ssh "$line" 'bash -s' < $HOME/bin/update/Update-Manjaro.sh
	done < "$1"
}	# end Main
Main

#===EXIT===
exit 0



