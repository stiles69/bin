#!/bin/bash 
#====================================================
#
#          FILE: funcURLEncode.sh
# 
#         USAGE: ./funcURLEncode.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/10/2019 07:51
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
PARAM1="$1"
function urlencode() 
{
	echo "$@" | awk -v ORS="" '{ gsub(/./,"&\n") ;
	print }' | while read l
	do
		c="`echo "$l" | grep '[^-._~0-9a-zA-Z]'`"
		if [ "$l" == "" ]
		then
			echo -n "%20"
		else
			if [ -z "$c" ]
			then
				echo -n "$l"
			else
				printf %%%02X \'"$c"
			fi
		fi
	done
	echo ""
}

function Main ()
{
	urlencode $PARAM1
}

Main

exit 0
