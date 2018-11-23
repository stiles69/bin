#!/bin/bash  
#====================================================
#
#          FILE: 16-Install-All-Vim-From-Boot.sh
# 
#         USAGE: ./16-Install-All-Vim-From-Boot.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/23/2018 00:04
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
INSTALLDIR=$HOME/raspbian-config
HOMEDIR=/home/brettsalemink
ETCDIR=/etc
#-------------------------------------
	sudo cp -r "$INSTALLDIRslave1/home/brettsalemink/.vim" "$HOMEDIR"
	sudo cp "$INSTALLDIR/slave1/home/brettsalemink/.vimrc" "$HOMEDIR"
}	# end Main

Main

#===EXIT===
exit 0
