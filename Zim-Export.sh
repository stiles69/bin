#!/bin/bash
#===============================================================================
#
#          FILE:  Zim-Export.sh
# 
#         USAGE:  ./Zim-Export.sh 
# 
#   DESCRIPTION:  This will export zim notebook.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  05/23/2018 07:55:02 AM CDT
#      REVISION:  ---
#===============================================================================


set -o nounset                                  # treat unset variables as errors

function ExportNotes ()
{
	$HOME/bin/Zim-Build-Website.sh
	wait
}	# end function

function SyncNotes ()
{
	$HOME/bin/Pull-Notes.sh
	wait
}	# end SyncNotes

function Main ()
{
	ExportNotes
	SyncNotes
}	# end Main

Main

#===EXIT===
exit 0
