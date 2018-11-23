#!/bin/bash  
#====================================================
#
#          FILE: Update-Raspbian-Config-Slave1.sh
# 
#         USAGE: ./Update-Raspbian-Config-Slave1.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/23/2018 04:11
#      REVISION:  ---
#==============================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

BINDIR="$HOME/bin/files"
BINHOMEDIR="$BINDIR/home/brettsalemink"
BINETCDIR="$BINDIR/etc"
RASPBIANCONFIGDIR=/mnt/Data/Images/Raspbian/Config
SLAVE1DIR="$RASPBIANCONFIGDIR/slave1"
ETCDIR="$SLAVE1DIR/etc"
SLAVE1HOMEDIR="$SLAVE1DIR/home/brettsalemink"
#-------------------------------------
function Main ()
{
	echo "Running Update-All-Vim-In-Files-Install.sh"
	$HOME/bin/update/Update-All-Vim-In-Files-Install.sh
	sudo rm -r "$ETCDIR"
       	mkdir "$ETCDIR"

	echo "Copying files to New Config"
	cp "$BINETCDIR/dhcpcd.conf" "$ETCDIR"
	cp "$BINETCDIR/hostname" "$ETCDIR"
	cp "$BINETCDIR/hosts" "$ETCDIR"
	cp -r "$BINETCDIR/ssh" "$ETCDIR"

	cp "$BINHOMEDIR/.zshrc" "$SLAVE1HOMEDIR"
	cp "$BINHOMEDIR/.zlogout" "$SLAVE1HOMEDIR"
	cp -r "$BINHOMEDIR/.ssh" "$SLAVE1HOMEDIR"

	echo "Finished Configuration Setup"
}	# end Main

Main

#===EXIT===
exit 0
