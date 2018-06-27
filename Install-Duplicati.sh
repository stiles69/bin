#!/bin/bash  
#===============================================================================
#
#          FILE: Install-Duplicati.sh
# 
#         USAGE: ./Install-Duplicati.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 18:27
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

echo "deb http://download.mono-project.com/repo/debian raspbianstretch main" | sudo tee /etc/apt/sources.list.d/mono-official.list

sudo apt-get update
sudo apt-get install mono-devel

sudo dpkg -i ~/bin/Packages/duplicati_2.0.3.3-1_all.deb

exit 0
