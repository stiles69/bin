#!/bin/bash
#===============================================================================
#
#          FILE:  kali-setup.sh
# 
#         USAGE:  ./kali-setup.sh 
# 
#   DESCRIPTION:  Kali-Docker Setup
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Enterprises
#       VERSION:  1.0
#       CREATED:  08/22/2016 03:34:28 AM CDT
#      REVISION:  ---
#===============================================================================


set -o nounset                                  # treat unset variables as errors

#===============================================================================
#   GLOBAL DECLARATIONS
#===============================================================================
declare -rx SCRIPT=${0##*/}                     # the name of this script
declare -rx mkdir='/bin/mkdir'                  # the mkdir(1) command

#===============================================================================
#   SANITY CHECKS
#===============================================================================
if [ -z "$BASH" ] ; then
	printf "$SCRIPT:$LINENO: run this script with the BASH shell\n" >&2
	exit 192
fi

if [ ! -x "$mkdir" ] ; then
	printf "$SCRIPT:$LINENO: command '$mkdir' not available - aborting\n" >&2
	exit 192
fi

#===============================================================================
#   MAIN SCRIPT
#===============================================================================
# Install dependencies (debbootstrap)
sudo apt-get install debootstrap
# Fetch the latest Kali debootstrap script from git
curl "http://git.kali.org/gitweb/?p=packages/debootstrap.git;a=blob_plain;f=scripts/kali;hb=HEAD" &gt; kali-debootstrap &amp;&amp;\
	sudo debootstrap kali ./kali-root http://http.kali.org/kali ./kali-debootstrap &amp;&amp;\
	# Import the Kali image into Docker
sudo tar -C kali-root -c . | sudo docker import - kalilinux/kali &amp;&amp;\
	sudo rm -rf ./kali-root &amp;&amp;\
	# Test the Kali Docker Image
docker run -t -i kalilinux/kali cat /etc/debian_version &amp;&amp;\
	echo "Build OK" || echo "Build failed!"
#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0
