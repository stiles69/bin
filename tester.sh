#!/bin/bash  
#====================================================
#
#          FILE: tester.sh
# 
#         USAGE: ./tester.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/07/2018 17:45
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------

	readonly TARGETS=( "cp.slave1" "cp.slave2" "cp.slave3" )
	readonly COMMAND="sudo apt-get update -y && sudo apt-get upgrade -y"

function Main ()
{
	ssh brettsalemink@$ip "$COMMAND"
}	# end Main

main2 () 
{ 
	local ip 
	local port 
	
	for target in "${TARGETS[@]}"; do 
		ip=${target%:*} 
		port=${target#*:} 
		printf "ip=$ip\tport=$port\n"
	       	Main
		wait
	done 
} 

main2


#===EXIT===
exit 0

