#!/bin/bash  
#====================================================
#
#          FILE: Sender.sh
# 
#         USAGE: ./Sender.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/08/2018 02:29
#      REVISION:  ---
#==============================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------

function SendMessage ()
{
	ssh brettsalemink@10.0.0.11 'export Display=:0;notify-send -a "Transmission" -t 5000 "Transmission Extract Update" "Finished extracting and moving file."'
}	# end

function Main ()
{
	SendMessage
}	# end Main

Main

#===EXIT===
exit 0

