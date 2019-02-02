#!/bin/bash  
#====================================================
#
#          FILE: Convert-Directory-Chromecast-2-Pass.sh
# 
#         USAGE: ./Convert-Directory-Chromecast-2-Pass.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/12/2018 06:42
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------
									  
#-------------------------------------
#---------- GLOBAL VARIABLES ---------
INPUTDIR="$1"
OUTPUTDIR="$2"									  
#-------------------------------------

function CheckVars()
{
	if [ "$INPUTDIR" == null ]
	then
		echo "Correct cli usage is Convert-Directory-Chromecast-2-Pass.sh <InputDirFilePath> <OutputDirFilePath>"
		echo "Please enter the filepath of the Input Directory?"
		read INPUTDIR
	fi

	if [ "$OUTPUTDIR" == null ]
	then		
		echo "Correct cli usage is Convert-Directory-Chromecast-2-Pass.sh <InputDirFilePath> <OutputDirFilePath>"
		echo "Please enter the filepath of the Output Directory?"
		read OUTPUTDIR
	fi	
}

function Convert () 
{
	cd "$INPUTDIR"	

	for FILENAME in *
	do 
		NAME=`echo "$FILENAME" | cut -d'.' -f1`
		echo $NAME
		NEWNAME="$NAME.mp4"

		ffmpeg -i "$FILENAME" -c:v libx264 -profile:v high -level 5 -crf 18 -maxrate 10M -bufsize 16M -pix_fmt yuv420p -vf "scale=iw*sar:ih, scale='if(gt(iw,ih),min(1280,iw),-1)':'if(gt(iw,ih),-1,min(720,ih))'" -x264opts bframes=3:cabac=1 -movflags faststart -c:a libfdk_aac -b:a 320k -y "$OUTPUTDIR/$NEWNAME"
		wait
	done
}	# end function

function Main ()
{
	CheckVars
	Convert
}	# end function

Main

# == EXIT ==
exit 0
