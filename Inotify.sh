#!/bin/bash  
#===============================================================================
#
#          FILE: Inotify.sh
# 
#         USAGE: ./Inotify.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/18/2018 07:31
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

case "$1" in
	start)   
	nohup $HOME/bin/NotifyScript.sh > /dev/null 2>&1 &   
	echo $!>/var/run/NotifyScript.sh.pid   
	;;
	stop)   pkill -P `cat /var/run/NotifyScript.sh.pid`   
	rm /var/run/NotifyScript.sh.pid   
	;;
	restart)   
	$0 stop   
	$0 start   
	;;
	status)   
	if [ -e /var/run/NotifyScript.sh.pid ]; 
		then      
			echo NotifyScript.sh is running, pid=`cat /var/run/NotifyScriptsh.pid`   
		else      
			echo NotifyScript.sh is not running      
			exit 1   
		fi   
	;;
	*)   
	echo "Usage: $0 {start|stop|status|restart}"
esac
exit 0

