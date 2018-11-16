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
set -e

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
INPUTDIR=$HOME/Notes
EXPORTDIR=$HOME/development/stiles69/zim

#-------------------------------------
function Main ()
{
	rsync -avz "$INPUTDIR/" --exclude "*.txt" --exclude ".git*" "$EXPORTDIR"
	wait
	echo "****Completed RSyncing $INPUTDIR to $EXPORTDIR****"
	sleep 3
	zim --index "$INPUTDIR"
	wait
	echo "****Completed indexing $INPUTDIR.****"
	sleep 3
	cd "$INPUTDIR"
	zim --export --format=html -O --template=$HOME/bin/zim/custom/Rogue-Print-Custom.html --output="$EXPORTDIR" --index-page=sitemap "$INPUTDIR"
	wait
	echo "****Completed exporting $INPUTDIR to $EXPORTDIR****"
	sleep 3
	cd "$EXPORTDIR"
	git add .
	wait
	git commit -m "Update Zim"
	wait
	git push
	wait
	echo "Completed pushing $EXPORTDIR. Website can be found at https://stiles69.github.io/zim/sitemap.html"

	
}	# end Main

Main

#===EXIT===
exit 0
