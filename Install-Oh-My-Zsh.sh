
#!/bin/bash
#===============================================================================
#
#          FILE:  3-Install-Packages# 
#         USAGE:  
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  None
#  REQUIREMENTS:  None
#          BUGS:  None
#         NOTES:  
#        AUTHOR:  Brett Salemink (BS), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  12/04/2017 04:02:50 PM CST
#      REVISION:  
#===============================================================================`

sudo apt-get install zsh
# Set zsh for user
sudo chsh -s /bin/zsh brettsalemink

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp ~/bin/RaspberryPi-ReInstall/Files/home/brettsalemink/../.zshrc ~/.zshrc

exit 0