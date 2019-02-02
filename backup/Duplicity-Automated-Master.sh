#!/bin/bash

# -------- VARIABLES ----------
HOMEDIR=/home/brettsalemink
HOSTER=Master
BACKUPDIR=/Backups/$HOSTER
BACKEND="mega://brett.salemink@gmail.com@mega.co.nz/$BACKUPDIR"

# Script created on 12-1-2005 
# This script was created to make Duplicity backups.
# Full backups are made on the 1st day of each month. 
# Then incremental backups are made on the other days. 
# Loading the day of the month in a variable. 
date=`date +%d` 

# Setting the pass phrase to encrypt the backup files. 
export PASSPHRASE='every good boy deserves fudge 2013' 
export PASSPHRASE 

# Setting the password for the FTP account that the 
# backup files will be transferred to. 
#FTP_PASSWORD='WhateverPasswordYouSetUp' 
#export FTP_PASSWORD 

# Check to see if we're at the first of the month. 
# If we are on the 1st day of the month, then run 
# a full backup. If not, then run an incremental 
# backup. 
if [ $date = 01 ] 
     then 
          duplicity full --progress --no-encryption $HOMEDIR $BACKEND #>>/var/log/duplicity/personal.log 
          duplicity full --progress --no-encryption /etc $BACKEND/etc #>>/var/log/duplicity/etc.log 
     else 
          duplicity --progress --no-encryption $HOMEDIR $BACKEND #>>/var/log/duplicity/personal.log 
          duplicity --progress --no-encryption /etc $BACKEND/etc #>>/var/log/duplicity/etc.log 

fi 

# Check http://www.nongnu.org/duplicity/duplicity.1.html 
# for all the options available for Duplicity. 
# Deleting old backups 
duplicity remove-older-than 1W --force $BACKEND #>>/var/log/duplicity/personal.log 
duplicity remove-older-than 1W --force $BACKEND/etc #>>/var/log/duplicity/etc.log 
duplicity remove-all-but-n-full 2 --force $BACKEND #>>/var/log/duplicity/personal.log
duplicity remove-all-but-n-full 2 --force $BACKEND/etc #>>/var/log/duplicity/etc.log

# Unsetting the confidential variables so they are 
# gone for sure. 
#unset PASSPHRASE 
#unset FTP_PASSWORD 

exit 0
