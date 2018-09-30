#!/bin/bash 
#====================================================
#
#          FILE: Install-Sickbeard.sh
# 
#         USAGE: ./Install-Sickbeard.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/29/2018 20:20
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	wget https://pypi.python.org/packages/source/C/Cheetah/Cheetah-2.4.4.tar.gz
	tar -zxvf Cheetah-2.4.4.tar.gz
	cd Cheetah-2.4.4
	sudo python2.7 setup.py install
	cd $HOME/development/stiles69
	git clone git://github.com/midgetspy/Sick-Beard.git my-sickbeard-install
	cd my-sickbeard-install
	python SickBeard.py
}	# end Main

Main

#===EXIT===
exit 0

