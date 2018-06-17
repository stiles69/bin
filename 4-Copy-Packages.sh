#!/bin/bash

rm Temp.txt
rm ../Files/etc/hostname
echo '#====Added by Script by Brett Salemink====' > Temp.txt
echo 'What is the hostname:'
read VARHOSTNAME
echo 'What is the static ip address of this RaspberryPi:'
read VARSTATICIP
echo 'What is the router ip address:'
read VARROUTER
echo 'What static domain name servers do you want to use:'
read VARSTATICDNS

echo $VARHOSTNAME >> ../Files/etc/hostname
echo 'interface eth0' >> Temp.txt
echo $VARSTATICIP ' '$VARHOSTNAME >> Temp.txt
echo 'static ip_address='$VARSTATICIP'/24' >> Temp.txt
echo 'static routers='$VARROUTER >> Temp.txt
echo 'static domain_name_servers='$VARSTATICDNS >> Temp.txt

cat Temp.txt >> ../Files/etc/dhcpcd.conf

sudo mv ../Files/etc/dhcpcd.conf /etc/
sudo mv ../Files/etc/hostname /etc/