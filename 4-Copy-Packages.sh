#!/bin/bash

DIRPATH=$HOME/bin/RaspberryPi-ReInstall/Install-Scripts/Temp
FILESDIR=$HOME/bin/files

function CleanTempDir ()
{
	rm $DIRPATH/Temp.txt
}	# end function

function ProduceHostname ()
{
	echo 'What is the hostname:'
	read VARHOSTNAME
	echo $VARHOSTNAME >> $DIRPATH/hostname
	mv $DIRPATH/hostname $HOME/bin/files/etc/
}	# end function

function ProduceDhcpcd ()
{
	echo 'What is the static ip address of this RaspberryPi:'
	read VARSTATICIP
	echo 'What is the router ip address:'
	read VARROUTER
	echo 'What static domain name servers do you want to use:'
	read VARSTATICDNS

	echo 'interface eth0' >> $DIRPATH/Temp.txt
	echo $VARSTATICIP ' '$VARHOSTNAME >> $DIRPATH/Temp.txt
	echo 'static ip_address='$VARSTATICIP'/24' >> $DIRPATH/Temp.txt
	echo 'static routers='$VARROUTER >> $DIRPATH/Temp.txt
	echo 'static domain_name_servers='$VARSTATICDNS >> $DIRPATH/Temp.txt

	cat $DIRPATH/Temp.txt >> $FILESDIR/etc/dhcpcd.conf
}	# end function

function MoveToETC ()
{
	sudo mv $FILESDIR/etc/dhcpcd.conf /etc/
	sudo mv $HOME/bin/files/etc/hostname /etc/
}	# end function

function Main ()
{
	CleanTempDir
	ProduceHostname
	ProduceDhcpcd
	MoveToETC
	if [ $(echo hostname) = $VARHOSTNAME ]
	then
		echo "Hostname successfully changed."
	else
		echo "Hostname change unsuccessful."
	fi

	echo "You will have to check the dhcpcd.conf file manually. Do you want to open it? [y/N]"
	read PROCEED

	case $PROCEED in
		"Y"|"y")
		sudo vim /etc/dhcpcd.conf
		;;
		"N"|"n")
		exit 0
		;;
		*)
		sudo vim /etc/dhcpcd.conf
		;;
	esac

}	# end function


