#!/bin/bash

#=======GLOBAL=======
DIR1="$HOME/development/Docker/docker-duplicati-armhf"
DIR2="/backups"

function main () 
{
	sudo chown -R brettsalemink:docker "$DIR1"
	sudo chmod -R 774 "$DIR1"
	sudo chown -R brettsalemink:docker "$DIR2"
	sudo chmod -R 774 "$DIR2"

	ls -l $DIR1
	ls -l $DIR2
}

main

exit 0
