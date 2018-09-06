#!/bin/bash  
#====================================================
#
#          FILE: Download-Wget-All-Links.sh
# 
#         USAGE: ./Download-Wget-All-Links.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/05/2018 19:33
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------

#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	echo "This will Download all links on a page. What is the URL of the repo you want to download?"
	read URL
	wget -r -c -nH -nc -np --show-progress "$URL"
	
}	# end Main

Main

#===EXIT===
exit 0

