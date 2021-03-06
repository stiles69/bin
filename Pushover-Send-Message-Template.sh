#!/bin/bash 
#====================================================
#
#          FILE: Pushover-Send-Message.sh
# 
#         USAGE: ./Pushover-Send-Message.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 02/05/2019 20:55
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
CURLURL=https://api.pushover.net/1/messages.json
TOKEN='abf9p41utz3v4a49wz59w2ussp9cxk'
USER='gos41mgsak3tf3ue5og3f5hd2z3ceb'
TITLE='Slave1'
MESSAGE='Torrent Complete'
PRIORITY=0
URL='http://10.0.0.5:8112'
URL_TITLE='Slave1 Deluge'
IMAGE='/home/brettsalemink/Pictures/Manjaro Icons/PNG/Slave-Icon-128x128.png'
#-------------------------------------
function Main ()
{
	curl -s --form-string "token=$TOKEN" \
      		--form-string "user=$USER" \
	     	--form-string "title=$TITLE" \
		--form-string "message=$MESSAGE" \
		--form-string "priority=$PRIORITY" \
		--form-string "url=$URL" \
		--form-string "url_title=$URL_TITLE" \
		-F "attachment=@$IMAGE" \
		$CURLURL
	
}	# End Main	

Main

#===EXIT===
exit 0

