#!/bin/bash 
#====================================================
#
#          FILE: Install-NextCloud.sh
# 
#         USAGE: ./Install-NextCloud.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/25/2018 18:01
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------

#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Install ()
{
	echo "This will install NextCloud on a Debian-Based System. Do you want to continue? [Y/n]"
	read PROCEED
	case $PROCEED in
		Y|y)
		InstallNextCloud
		;;
		N|n)
		echo "Exiting"
		exit 0
		;;
	esac

}	# end

function InstallNextCloud()
{
	sudo apt-get install apache2
	sudo apt-get install php7.0 php7.0-gd sqlite php7.0-sqlite php7.0-curl php7.0-zip php7.0-xml php7.0-mbstring
	sudo service apache2 restart
	curl https://download.nextcloud.com/server/releases/nextcloud-13.0.4.tar.bz2 | sudo tar -jxv
	sudo mkdir -p /var/www/html/nextcloud/data
	sudo chown -R www-data:www-data /var/www/html/nextcloud/
	sudo chmod 750 /var/www/html/nextcloud/data

}	# end

function Main ()
{
	Install	
}	# end Main

Main

#===EXIT===
exit 0

