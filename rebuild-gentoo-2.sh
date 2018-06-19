
#!/bin/bash
#===============================================================================
#
#          FILE:  rebuild-gentoo.sh
# 
#         USAGE:  ./rebuild-gentoo.sh
# 
#   DESCRIPTION:  Rebuild Gentoo pi64 image.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  01/28/2018 10:14:35 PM CST
#      REVISION:  1.0
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
echo "You must remove all packages in the file /var/lib/portage/world except for dev-embedded/rpi3-64bit-meta."

readline VARANSWER

sudo nano /var/lib/portage/world

sudo emerge --ask --depclean

echo "Once the emerge --depclean completes, fix any broken shared library dependencies; issue"

readline VARANSWER

sudo revdep-rebuild

sudo reboot
#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0
