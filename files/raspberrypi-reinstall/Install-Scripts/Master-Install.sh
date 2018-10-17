#!/bin/bash  
#====================================================
#
#          FILE: Master-Install.sh
# 
#         USAGE: ./Master-Install.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/17/2018 00:51
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
set -e

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
USERNAME='stiles'
#-------------------------------------
#-------------------------------------
function UpdateUpgrade ()
{
        function DebUpdateUpgrade ()
        {
            sudo apt-get update -y && sudo apt-get upgrade -y
        }
  
        function StartUpdateUpgrade ()
        {
            DebUpdateUpgrade	
        }
    StartUpdateUpgrade

}
#-------------------------------------
#-------------------------------------
function CreateUser ()
{
        function GetCurrentGroups ()
        {
            cd $HOME
            groups > groups.txt
            sed 's/ /,/g' groups.txt > groups2.txt
        }	

        function MakeUser ()
        {
            useradd -m "$USERNAME"            
            sudo usermod -aG $(cat groups2.txt) "$USERNAME"
            sudo usermod -aG sudo "$USERNAME"
	    echo 'Do not forget to set the password on $USERNAME' # sudo passwd "$USERNAME"
	    sleep 10
        }	

        function CleanUp ()
        {
            cd $HOME
            rm groups.txt
            rm groups2.txt
        }	# end function

        function StartCreateUser ()
        {
            GetCurrentGroups
            MakeUser
            CleanUp		
        }
    StartCreateUser
}
#-------------------------------------
#-------------------------------------
function InstallSSHKeys ()
{
    mkdir $HOME/.ssh
	ssh-keygen -t rsa -b 2048 -C $(hostname)
	wait
	cat $HOME/.ssh/id_rsa.pub
	echo 'You now need to copy this ssh-key to github at https://github.com/settings/keys'
	echo 'When done start Master-Install-2.sh'
}
#-------------------------------------
#-------------------------------------
function Main ()
{
    UpdateUpgrade
    wait
    CreateUser
    wait
    InstallSSHKeys       
    wait  
}	# end Main
#-------------------------------------
Main

#===EXIT===
exit 0