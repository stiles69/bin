#!/system/bin/sh
wget https://nodejs.org/dist/latest/node-v7.4.0-linux-armv7l.tar.xz
tar -xvf node-v7.4.0-linux-armv7l.tar.xz
cd node-v7.4.0-linux-armv7l
sudo cp -R * /usr/local/
echo 'Now reboot RaspberryPi and after reboot run node -v to make sure NodeJS was installed properly.'
