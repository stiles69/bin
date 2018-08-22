#!/bin/bash  
#=========================================================
#
#          FILE: build.sh
# 
#         USAGE: ./build.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/03/2018 18:49
#      REVISION:  ---
#=========================================================
set -o nounset                              # Treat unset variables as an error

function SyncCloudToLocal ()
{
	rsync -rvz $HOME/brett.salemink@gmail.com/Notes/ $HOME/Notes/
}	# end function

function BuildWebsite ()
{	
	cd $HOME/Notes
	zim --export \
		--format=html --template=/usr/share/zim/templates/html/ZeroFiveEight.html --index-page=index \
		--output="$HOME/development/stiles69/zim" --overwrite 
}	# end function

function SyncNotesZim ()
{
	$HOME/bin/Pull-Zim.sh
	$HOME/bin/Pull-Notes.sh
}	# end function

function Main ()
{
	SyncCloudToLocal
	BuildWebsite
	SyncNotesZim
}	# end Main

Main

#===EXIT===
exit 0
