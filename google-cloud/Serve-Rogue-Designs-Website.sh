#!/bin/bash
#====================================================
#
#          FILE: Serve-Hometown-Cab-Project.sh
# 
#         USAGE: ./Serve-Hometown-Cab-Project.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/14/2018 09:05
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------

#---------- GLOBAL VARIABLES ---------
SITEDIR="$1"
#-------------------------------------
function Main ()
{
	rsync -avz --progress --delete-before "$SITEDIR/" "$HOME/development/GitLab/Rogue-Designs-Google-Cloud-Deployment/Webserver1/files/"

	cd $HOME/development/GitLab/Rogue-Designs-Google-Cloud-Deployment/Webserver1
	
	dev_appserver.py app.yaml
}	# end Main

Main

#===EXIT===
exit 0
