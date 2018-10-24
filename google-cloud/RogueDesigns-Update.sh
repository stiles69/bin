#!/bin/bash
#====================================================
#
#          FILE:  Update-RogueDesigns-2.sh
# 
#         USAGE:  ./Update-RogueDesigns-2.sh 
# 
#   DESCRIPTION:  This will update Roguedesigns website. Must be in dist!!!
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  03/23/2018 06:52:09 PM CDT
#      REVISION:  ---
#====================================================

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
CURRENTDIR="$1"
DEPLOYDIR="$HOME/development/stiles69/Rogue-Designs-Google-Cloud-Deployment/Webserver1"
#-------------------------------------
function Main ()
{
	rsync -rvz --progress --delete-before "$CURRENTDIR/" "$DEPLOYDIR/files"
	wait
	gcloud app versions list
	read -p 'What is the next version:' VERSIONANSWER
	gcloud app deploy -v $VERSIONANSWER "$DEPLOYDIR/app.yaml"
	gcloud app versions list
	read -p 'What version to delete:' DELETEANSWER
	gcloud app versions delete $DELETEANSWER
 
}	# end Main

Main

#===EXIT===
exit 0
