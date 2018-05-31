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

echo '**********DANGER THIS WILL USE RSYNC FROM THE CURRENT DIR USE CTRL-C IF YOU MADE A MISTAKE**************'

wait 3600

rsync -avz --progress ./ /home/brettsalemink/stiles69/Rogue-Designs-Google-Cloud-Deployment/Webserver1/files/


gcloud app versions list

echo 'What should the next version be?'

read versionVariable

gcloud app deploy --version $versionVariable --quiet /home/brettsalemink/stiles69/Rogue-Designs-Google-Cloud-Deployment/Webserver1/app.yaml

gcloud app versions list

echo 'What was the old version to delete?'

read versionOldVariable

gcloud app versions delete $versionOldVariable

echo 'Done Updating Website'

#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0
