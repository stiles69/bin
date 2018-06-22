#!/bin/bash
# Download the repository.
git clone git://github.com/VitaliyRodnenko/geeknote.git

cd geeknote

sudo apt-get install python2-setuptools -y

# Installation
sudo python2 setup.py install

# Launch Geeknote and go through login procedure.
#geeknote login

exit 0
