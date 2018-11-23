#!/bin/bash  
#====================================================
#
#          FILE: 15-Install-All-Config-From-Boot.sh
# 
#         USAGE: ./15-Install-All-Config-From-Boot.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/22/2018 23:58
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
	
	sudo cp "$INSTALLDIR/slave1/home/brettsalemink/config" "$HOMEDIR/.ssh"
	
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
	sudo cp "$INSTALLDIR/slave1/etc/ssh/sshd_config" "$ETCDIR/ssh"
	wait
	
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	wait
	sudo cp "$INSTALLDIR/slave1/home/brettsalemink/.zshrc" "$HOMEDIR"
	wait
	echo 'Oh My ZSH installed.'
	sleep 5

	echo "Do you want to check .zshrc? [Y/n]"
	read ANSWER

	case "$ANSWER" in
		Y|y)
		vim "$HOMEDIR/.zshrc"
		;;
		N|n)
		exit 0
		;;
		*)
		vim "$HOMEDIR/.zshrc"
		;;
	esac
}	# end Main

Main

#===EXIT===
exit 0

