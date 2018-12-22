#!/bin/bash

#=======GLOBAL=======
DIR1="$HOME/development/Docker/docker-emby-armhf"
DIR2=/share1
DIR3=/mnt/sandisk
CHUSER=brettsalemink
CHGROUP=docker
CHPERM=774
function main () 
{
	sudo chown -R $CHUSER:$CHGROUP "$DIR1"
	sudo chmod -R $CHPERM "$DIR1"
	sudo chown -R $CHUSER:$CHGROUP "$DIR2"
	sudo chmod -R $CHPERM "$DIR2"
	sudo chown -R $CHUSER:$CHGROUP "$DIR3"

	ls -l $DIR1
	ls -l $DIR2
	ls -l $DIR3
}

main

exit 0
