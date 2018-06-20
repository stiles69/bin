#!/bin/bash
# Download the repository.
git clone git://github.com/VitaliyRodnenko/geeknote.git

cd geeknote

sudo apt-get install python-setuptools -y

# Installation
sudo python setup.py install

# Launch Geeknote and go through login procedure.
geeknote login

exit 0
