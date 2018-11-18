#!/bin/bash
echo "Downloading & Installing Packages.. \n"
sudo apt-get install python supervisor nmap dnsutils mtr python-pip && sudo pip install telepot

sudo useradd --system -m trsh


echo "Enter your Telegram BOT Token: "
read TG_BOT_TOKEN


sed -i s"/TG-BOT-TOKEN/$TG_BOT_TOKEN/" get-sender-id.py

echo "Trying to find out your Telegram sender-id..\n"
python get-sender-id.py  | grep "'id'" | uniq -c | awk '{ print $3 }' | sed s'/,//'

echo "Enter your Telegram Sender ID: "
read SENDER_ID

sed -i s"/SENDER-ID-LIST/$SENDER_ID/" controller.py

sed -i s"/TG-BOT-TOKEN/$TG_BOT_TOKEN/" controller.py

sudo cp ./controller.py /home/trsh/
wait

# Change permissions
sudo chown trsh:users /home/trsh/controller.py
wait
sudo chmod 774 /home/trsh/controller.py
wait

echo "Configuring trsh as a service"
sudo cp service/trsh.service /usr/lib/systemd/system/trsh.service
wait

echo "Making systemctl link"
sudo systemctl link /usr/lib/systemd/system/trsh.service
wait

echo "Reloading Systemd"
sudo systemctl daemon-reload
wait

echo "Starting trsh service.. \n"
sudo systemctl start trsh.service
wait

echo "Status"
sudo systemctl status trsh.service
