#!/bin/bash
#===================================================
#
#          FILE: downloadbin.sh
# 
#         USAGE: ./downloadbin.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/15/2018 04:30
#      REVISION:  ---
#===================================================
set -o nounset                              # Treat unset variables as an error
curl -L https://gist.githubusercontent.com/stiles69/763a58925703a637b1add4b4d61a127b/raw/abd660f1873de0a97cf26897632431bb6a335105/Download-Bin.sh | sh
wait
exit 0

