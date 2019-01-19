#!/bin/bash  
#====================================================
#
#          FILE: Find-Remote-File.sh
# 
#         USAGE: ./Find-Remote-File.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/19/2019 10:09
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
DIR1=/media/Videos/Adult
REMOTEDIR1=/Media/Adult
#-------------------------------------
function MegaLogin ()
{
	mega-login brett.salemink@gmail.com Vizio#2013
	wait
}

function MegaLogout ()
{
	mega-logout
	wait
}

function Finder ()
{
	mkdir /tmp$REMOTEDIR1

	mega-ls "$REMOTEDIR1" > /tmp$REMOTEDIR1/Remote-LS.txt
	ls "$DIR1" > /tmp$DIR1/Local-LS.txt

	IFS=$'\n' read  -d'' -r -a inlines  < "/tmp$REMOTEDIR1/Remote-LS.txt"
	IFS=$'\n' read  -d'' -r -a  outlines < "/tmp$REMOTEDIR1/Remote-LS.txt"
	counter=0
	cat "/tmp$REMOTEDIR1/Remote-LS.txt" | while read line; 
	do    
		echo "$counter ${inlines[$counter]}"   
	       	grep -v "${inlines[$counter]}" "/tmp$DIR1/Local-LS.txt" > "/tmp$DIR1/Local2-LS.txt"; mv "/tmp$DIR1/Local2-LS.txt" "/tmp$DIR1/Local-LS.txt"			   
		counter=$(($counter+1))
	done
	
	
}

function Main ()
{
	MegaLogin
	wait
	Finder
	wait
	MegaLogout
	wait
}	# end Main

Main

#===EXIT===
exit 0

