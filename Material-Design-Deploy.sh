#!/bin/bash
#===============================================================================
#
#          FILE:  Material-Design-deploy.sh
# 
#         USAGE:  ./Material-Design-deploy.sh 
# 
#   DESCRIPTION:  Copys files from working directory to publishing directory then deploys to Google Cloud.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (BS), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  12/04/2017 06:49:42 PM CST
#      REVISION:  ---
#===============================================================================
rsync -avzh --delete --progress /home/brettsalemink/stiles69/hometown-vue-material/hometown-material-design/dist/ /home/brettsalemink/stiles69/hometown-vue-material-golang/Webserver1/files

gcloud app versions list

read -p "What do you want for the version name: " version_name

gcloud app deploy --version $version_name ~/stiles69/hometown-vue-material-golang/Webserver1/app.yaml

