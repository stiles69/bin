#!/bin/bash  
#====================================================
#
#          FILE: Set-Nginx.sh
# 
#         USAGE: ./Set-Nginx.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 12/19/2018 22:52
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
WEBDIR=/var/www/
#-------------------------------------
function Main ()
{
	sudo chown -R www-data:www-data $WEBDIR
	sudo chmod -R 0750 $WEBDIR

	ls -l $WEBDIR

	sudo bash -c "/etc/init.d/nginx restart && /etc/init.d/php7.3-fpm restart"
}	# end Main

Main

#===EXIT===
exit 0

