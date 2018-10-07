#!/bin/bash 
#====================================================
#
#          FILE: Run-Script-Multiple-Machines.sh
# 
#         USAGE: ./Run-Script-Multiple-Machines.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/07/2018 16:03
#      REVISION:  ---
#====================================================
#!/bin/bash
readonly USER="brettsalemink"
readonly PRIVATE_KEY="~/.ssh/id_rsa.pub"
readonly SCRIPT='echo -----STARTING;  
echo "WhoAmI? $(whoami)";  
echo -----DONE;
'
readonly TARGETS=(  
"10.0.0.5:22"  
"10.0.0.6:22"  
"10.0.0.14:22")

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
		-o StrictHostKeyChecking=no \                		-i "$PRIVATE_KEY" \                
		-p $port \                
		$USER@$ip
}


main 
execute_script_in_machine
exit 0

