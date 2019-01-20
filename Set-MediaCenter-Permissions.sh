#!/bin/bash

#=======GLOBAL=======
DIR1="$HOME/development/Docker/docker-mediacenter-armhf"
DIR2=/torrents
CHUSER=brettsalemink
CHGROUP=brettsalemink
CHPERM=774
function main () 
{
	sudo chown -R $CHUSER:$CHGROUP "$DIR1"
	sudo chmod -R $CHPERM "$DIR1"
	sudo chown -R $CHUSER:$CHGROUP "$DIR2"
	sudo chmod -R $CHPERM "$DIR2"

	ls -l $DIR1
	ls -l $DIR2
}

main

exit 0
