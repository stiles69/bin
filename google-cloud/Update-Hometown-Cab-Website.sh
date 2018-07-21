#!/bin/bash
#===============================================================================
#
#          FILE:  Update-Rogue-Designs-Website.sh
# 
#         USAGE:  ./Update-Rogue-Designs-Website.sh 
# 
#   DESCRIPTION:  This will rsync and then deploy Rogue Designs Website.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  Gcloud components, Rsync.
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  03/02/2018 10:10:12 PM CST
#      REVISION:  1.0
#===============================================================================


set -o nounset                                  # treat unset variables as errors

#===============================================================================
#   GLOBAL DECLARATIONS
#===============================================================================
declare -rx SCRIPT=${0##*/}                     # the name of this script
declare -rx mkdir='/bin/mkdir'                  # the mkdir(1) command

#===============================================================================
#   SANITY CHECKS
#===============================================================================
if [ -z "$BASH" ] ; then
printf "$SCRIPT:$LINENO: run this script with the BASH shell\n" >&2
exit 192
fi

if [ ! -x "$mkdir" ] ; then
printf "$SCRIPT:$LINENO: command '$mkdir' not available - aborting\n" >&2
exit 192
fi

#===============================================================================
#   MAIN SCRIPT
#===============================================================================


read -p 'This will rsync the CWD for the deployment. If you do not want this hit ctrl-c now! (Y/n)' answer

rsync -avz --progress --delete-before ./ /home/brettsalemink/development/stiles69/Hometown-Cab-Google-Cloud-Deployment/Webserver1/files/

gcloud app versions list

echo 'What should the next version be?'

read versionVariable

gcloud app deploy --quiet --version $versionVariable /home/brettsalemink/development/stiles69/Hometown-Cab-Google-Cloud-Deployment/Webserver1/app.yaml

gcloud app versions list

echo 'What was the old version to delete?'

read versionOldVariable

gcloud app versions --quiet delete $versionOldVariable

echo 'Done Updating Website'

#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0
