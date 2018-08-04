#!/bin/bash  
#===============================================================================
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
#===============================================================================

set -o nounset                              # Treat unset variables as an error


function BuildWebsite ()
{	
	cd $HOME/Notes
	cd "` dirname "$0"`"
#	cd ..
#
#	mkdir -p build
#	cd build
	cd $HOME/development/stiles69/zim
	[ -e _resources ] && rm -rf *
	cd ~
	zim --export \
		--format=html --template=ZeroFiveEight \
		--output="$HOME/development/stiles69/zim" --overwrite --index-page=index \
		$HOME/Notes
}	# end function

function SyncNotesZim ()
{
	$HOME/bin/Pull-Zim.sh
	$HOME/bin/Pull-Notes.sh
}	# end function

function Main ()
{
	BuildWebsite
	SyncNotesZim
}	# end Main

Main

#===EXIT===
exit 0
