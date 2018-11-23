#!/bin/bash  
#====================================================
#
#          FILE: Install-Etc-From-Root-Slave1.sh
# 
#         USAGE: ./Install-Etc-From-Root-Slave1.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/22/2018 23:46
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
set -e # Needed for sleep
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
INSTALLDIR=$HOME/raspbian-config
HOMEDIR=/home/brettsalemink
ETCDIR=/etc
#-------------------------------------
function Main ()
{
	echo "Installing dhcpcd.conf"
	sleep 3
	sudo cp "$INSTALLDIR/slave1/etc/dhcpcd.conf" "$ETCDIR"
	wait

	echo "Installing hostname"
	sleep 3
	sudo cp "$INSTALLDIR/slave1/etc/hostname" "$ETCDIR"
	wait

	echo "Installing hosts"
	sleep 3
	sudo cp "$INSTALLDIR/slave1/etc/hosts" "$ETCDIR"
	wait

	echo "Installing sshd_config"
	sleep 3
	sudo cp "$INSTALLDIR/slave1/etc/ssh/sshd_config" "$ETCDIR/ssh/"
	wait
}	# end Main

Main

#===EXIT===
exit 0

