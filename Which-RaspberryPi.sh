#!/bin/bash  
#====================================================
#
#          FILE: Which-RaspberryPi.sh
# 
#         USAGE: ./Which-RaspberryPi.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 02/05/2019 20:47
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
#!/bin/bash
echo "Start WhichPi"

rev=$(grep Revision /proc/cpuinfo | cut -f 2 -d: | tr -d '[:space:]')
echo $rev
case $rev in
0002)
echo " A RPi B Rev 1.0 with 256MB RAM Released: Q1 2012"
;;
0003)
echo "A RPi B Rev 1.0 (ECN0001 - no fuses , D14 removed with 256MB RAM Released: Q3 2012"
;;
0004)
echo "A RPi B Rev 2.0 with 256MB RAM Released: Q3 2012 Manfacturer: Sony"
;;
0005)
echo "A RPi B Rev 2.0 with 256MB RAM Released: Q3 2012 Manufacturer: Qisda "
;;

0006)
echo "A RPi B Rev 2.0 with 256MB RAM Released: Q4 2012 Manufaturer Egoman"
;;
0007)
echo "A RPi A Rev 2.0 with 256MB RAM Released: Q1 2013 Manfacturer: Egoman"
;;
0008)
echo "A RPi A Rev 2.0 with 256MB RAM Released: Q1 2013 Manufacturer: Sony "
;;

0009)
echo "A RPi A Rev 2.0 with 256MB RAM Released: Q1 2013 Manufaturer Qisda"
;;
000d)
echo "A RPi B Rev 2.0 with 512MB RAM Released: Q4 2012 Manfacturer: Egoman"
;;
000e)
echo "A RPi B Rev 2.0 with 512MB RAM Released: Q4 2012 Manfacturer: Sony"
;;
000f)
echo "A RPi B Rev 2.0 with 512MB RAM Released: Q4 2012 Manfacturer: Qisda"
;;
0010)
echo "A RPi B+ Rev 1.0 with 512MB RAM Released: Q3 2014 Manfacturer: Sony"
;;
0011)
echo "A RPi Compute Module Rev 1.0 with 512MB RAM Released: Q4 2014 Manfacturer: Sony"
;;
0012)
echo "A RPi A+ Rev 1.1 with 256MB RAM Released: Q4 2012 Manfacturer: Sony"
;;
0013)
echo "A RPi B+ Rev 1.2 with 512MB RAM Released: Q1 2015 Manfacturer: ?"
;;
0014)
echo "A RPi Compute Module Rev 1.0 with 512MB RAM Released: Q2 2014 Manfacturer: Embesty"
;;
0015)
echo "A RPi A+ Rev 1.1 with 256MB/512MB RAM Released: ? Manfacturer: Embesty"
;;
a01040)
echo "A RPi 2 Model B Rev 1.0 with 1GB Released: ? Manufacturer : ?"
;;

a01041)
echo "A RPi 2 Model B Rev 1.1 with 1GB RAM Released: Q1 2015 Manfacturer: Sony"
;;
a21041)
echo "A RPi 2 Medel B Rev 1.1 with 1GB RAM Released: Q1 2015 Manfacturer: Embest"
;;
a22042)
echo "A RPi 2 Model B (with BMC2837 Rev 1.2 with 1GB RAM Released: Q3 2016 Manfacturer: EMbest"
;;
a02082)
echo "A RPi 3 Model B Rev 1.2 with 1GB RAM Released: Q1 2016 Manfacturer: Sony"
;;
a22082)
echo "A RPi 3 Model B Rev 1.2 with 1GB RAM Released: Q1 2016 Manfacturer: Embest"
;;

*)
echo "BuM--"$rev"--"
;;



esac
}

Main

#===EXIT===
exit 0
