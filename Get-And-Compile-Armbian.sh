#!/system/bin/sh
apt-get -y install git
git clone https://github.com/armbian/build
cd build
./compile.sh