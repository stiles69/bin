#!/bin/bash  
#====================================================
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
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/12/2018 00:08
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error


#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
INPUTDIR=$HOME/Notes
EXPORTDIR=$HOME/zim-export
RSYNCDIR=$HOME/development/stiles69/zim
#-------------------------------------
function Main ()
{
	sudo rm -r "$EXPORTDIR/build"
	zim --index "$INPUTDIR"
	echo "Completed indexing $INPUTDIR."
	wait
	cd "$EXPORTDIR"
	mkdir build 
	cd build && rm -rf * 
	cd .. 
	zim --export --format=html -O --template=Print --output="$EXPORTDIR/build" --index-page=sitemap "$INPUTDIR"
	wait
	rsync -rvz "$EXPORTDIR/build/" "$RSYNCDIR"
	wait
	cd "$RSYNCDIR"
	git add .
	wait
	git commit -m "Update Zim-Export"
	wait
	git push
	wait

	echo "Completed indexing $INPUTDIR."
	echo "Completed Website Build from $INPUTDIR to $EXPORTDIR/build"
	echo "Completed syncing $EXPORTDIR/build to $RSYNCDIR"
	echo "Completed pushing $RSYNCDIR. Website can be found at https://stiles69.github.io/zim/sitemap.html"

	
}	# end Main

Main

#===EXIT===
exit 0
