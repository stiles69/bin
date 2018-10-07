#!/bin/bash  
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

readonly private_key='/home/brettsalemink/.ssh/id_rsa'
readonly SCRIPT='echo -----STARTING;
echo "WhoAmI? $(whoami)";
echo -----DONE;'

readonly user='brettsalemink'

readonly TARGETS=( 
"slave1.roguedesigns.us1:22" "10.0.0.12:22" )

main () 
{ 
	local ip 
	local port 
	for target in "${TARGETS[@]}"; do
		ip=${target%:*}
		port=${target#*:}
	done 
}


execute_script_in_machine () 
{ 
	local ip=$1 
	local port=$2 
	echo "$SCRIPT" | ssh \
	-o "StrictHostKeyChecking=no" \ 
	-i "$PRIVATE_KEY" \ 
	-p $port \
	$USER@$ip 
}

main

#==EXIT==
exit 0
