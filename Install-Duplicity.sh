#!/bin/bash  
#===============================================================================
#
#          FILE: Install-Mega-Cmd.sh
# 
#         USAGE: ./Install-Mega-Cmd.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 10:52
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

DetermineOS ()
{
# Include Lib
. ~/lib/sh/funcOS.sh

# Use Function
#funcOS

RESULT=$(funcOS)
echo 'The result is '
echo $RESULT

case $RESULT in
	
	"Debian")  
	echo "Installing For Debian/Based"    
	sudo apt-get install duplicity keychain
	Main
	;;

	"Raspbian GNU/Linux")  
	echo "Installing For Debian/Based"    
	sudo apt-get install duplicity keychain
	Main
	;;

	"Antergos Linux")  
	echo "Installing For Arch/Based"    
	yay -S duplicity
	Main
	;;
	
	*)
	echo 'No match can not install'
	exit
	;;
esac
}

Main ()
{

	# Generate key under SU
	su
	~/lib/sh/funcGenerateGPGKey.sh
	umask 077
	touch /root/backup.sh /root/duplicity.conf
	chmod u+x /root/backup.sh
	ls -la /root/backup.sh /root/.duplicity.conf
	echo 'Now check the permissions. First one should be:'
	echo '-rwx------  1 root root 0 2006-01-16 06:47 /root/backup.sh'
	echo 'The second one:'
	echo '-rw-------  1 root root 0 2006-01-16 06:47 /root/.duplicity.conf'

	echo 'Now you should have a password protected gpg public/private key pair.'
	gpg --list-secret-keys

	echo 'You should also have an ssh private/public key pair.'
	ls -la /root/.ssh
	
	echo 'End of Main'
}



# Exit
exit 0 




