#!/bin/bash  
#===============================================================================
#
#          FILE: Update-Gentoo-PI64.sh
# 
#         USAGE: ./Update-Gentoo-PI64.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 03/07/18 07:38
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

sudo emerge --ask --depclean
sudo revdep-rebuild
eclean-dist --deep && eclean-pkg --deep

$HOME/bin/Pull-Bin-Sh.sh
exit 0

