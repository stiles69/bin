#!/bin/bash
#====================================================
#
#          FILE: Install-Headphones.sh
# 
#         USAGE: ./Install-Headphones.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/04/2018 00:02
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	sudo apt-get update && sudo apt-get upgrade -y
	sudo git clone https://github.com/rembo10/headphones.git /opt/headphones

	sudo chown -R brettsalemink:brettsalemink /opt/headphones
	sudo cp $HOME/bin/files/etc/default/headphones /etc/default/

	sudo cp /opt/headphones/init-scripts/init.ubuntu /etc/init.d/headphones

	sudo chmod +x /etc/init.d/headphones

	sudo update-rc.d headphones defaults

	sudo service headphones start
}	# end Main

Main

#===EXIT===
exit 0

