#!/bin/bash 
#====================================================
#
#          FILE: Make-Complete-DVD.sh
# 
#         USAGE: ./Make-Complete-DVD.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/14/2018 21:49
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
ASPECTRATIO=" "
SOURCEVIDEO=" "
DVDMOVIE=DVDMOVIEDIR
CURRENTDIR="$PWD"
DVDISONAME=" "
#-------------------------------------
function Bootstrap ()
{
    export VIDEO_FORMAT=NTSC
    
    CheckDVDMOVIE
    GetSOURCEVIDEO
    GetDVDISONAME
    GetASPECTRATIO
}

function GetDVDISONAME ()
{
    echo "What name do you want for the iso, it should be all uppercase and no characters or spaces. ex. MYDVD The extension of iso will be added to your name. [Name of iso: ]"
    read DVDISONAME

}

function GetASPECTRATIO ()
{
    echo "Which aspect ratio do you want to use 16:9 Widescreen or the old 4:3 Normal? [1. 16x9, 2. 4x3]"
    read ASPECTRATIO

    case $ASPECTRATIO in
        1)
        ASPECTRATIO="16x9"
        ;;
        2)
        ASPECTRATIO="4x3"
        ;;
        *)
        echo "Unknown answer, exiting..."
        exit 1
        ;;
    esac
}

function GetSOURCEVIDEO ()
{
    if [ -z "$1" ]
    then
        echo "No argument supplied for the name of the file you want for the source video. Please enter the name of the video to convert to DVD. The program will assume it is in the same path as you are in now. [Filename:]"
        read SOURCEVIDEO       
    else
        SOURCEVIDEO="$1"        
    fi
}

function CheckDVDMOVIE ()
{
    if [ -d "$DVDMOVIE" ]
    then
       end
    else
        mkdir "$DVDMOVIE"
    fi
}

function CheckASPECTRATIO ()
{
    if [ $ASPECTRATIO = 1 ]
    then
        ConvertVideo16by9
    else
        ConvertVideo4by3
    fi
}

function ConvertVideo16by9 ()
{
    ffmpeg -i "$SOURCEVIDEO" -filter:v "scale='if(gt(a,720/480),720,-1)':'if(gt(a,720/480),-1,480)',pad=w=720:h=480:x=(ow-iw)/2:y=(oh-ih)/2" -target ntsc-dvd temp.mpg
    wait
}

function ConvertVideo4by3 ()
{
    ffmpeg -i "$SOURCEVIDEO" -filter:v "scale='if(gt(a,720/480),720,-1)':'if(gt(a,720/480),-1,480)',pad=w=720:h=480:x=(ow-iw)/2:y=(oh-ih)/2" -aspect 16:9 -target ntsc-dvd temp.mpg
    wait
}

function AssembleDVDFiles ()
{
    dvdauthor --title -o "$DVDMOVIE" -f temp.mpg
    wait
    dvdauthor -T -o "$DVDMOVIE"
    wait
}

function GenerateISOFile ()
{
    genisoimage -dvd-video -o "$DVDISONAME".iso "$DVDMOVIE"
    wait
}

function BurnDVD ()
{
    echo "$DVDISONAME.iso is ready to be burned, do you want to proceed. [Y/n]"
    read PROCEED
    case "$PROCEED" in
        Y|y)
        growisofs -dvd-compat -Z /dev/sr1="$DVDISONAME".iso
        ;;
        N|n)
        echo "Exiting..."
        exit 1
        ;;
        *)
        echo "Unknown answer, exiting..."
        exit 1
        ;;
    esac    
}

function Main ()
{
    Bootstrap
    CheckASPECTRATIO
    AssembleDVDFiles
    GenerateISOFile
    BurnDVD
}	# end Main

Main

#===EXIT===
exit 0

