#!/bin/bash  
#====================================================
#
#          FILE: Master-Install2.sh
# 
#         USAGE: ./Master-Install2.sh 
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

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
#-------------------------------------
function InstallGit ()
{
        function InstallGitDeb ()
        {
            echo "Installing For Debian/Based."    
            sudo apt-get install git -y
        }	

        function ConfigureGitUser ()
        {
            git config --global user.name "stiles69"
            git config --global user.email "brett.salemink@gmail.com"	
        }	

        function StartInstallGit ()
        {
            InstallGitDeb
            wait
            ConfigureGitUser
            wait
        }	

        StartInstallGit
}        
#-------------------------------------       
#-------------------------------------
function CloneBin ()
{
    cd $HOME
    git clone git@github.com:stiles69/bin.git

}
#-------------------------------------
#-------------------------------------
function CloneSH ()
{
    mkdir $HOME/lib
	cd $HOME/lib
	git clone git@github.com:stiles69/sh.git
}
#-------------------------------------
#-------------------------------------
function InstallVim ()
{
        function InstallerVimDeb ()
        {
            sudo apt-get install vim
        }	

        function InstallerVimBashSupport ()
        {
            sudo rm -r $HOME/.vim
            mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
            curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
            sudo rm $HOME/.vimrc
            touch $HOME/.vimrc
            echo "execute pathogen#infect()" >> $HOME/.vimrc
            echo "syntax on" >> $HOME/.vimrc
            echo "set number" >> $HOME/.vimrc
            echo "filetype plugin indent on" >> $HOME/.vimrc
            echo "Finished Installing Pathogen."
            echo "Commencing Installation of Vim-Bash-Support"
            cd $HOME/.vim/bundle
            git clone https://github.com/vim-scripts/bash-support.vim	
            cp $HOME/bin/files/bash-support/Templates $HOME/.vim/bundle/bash-support.vim/bash-support/templates/	
            echo "Installation of both Pathogen and Vim-Bash is complete."
        } 	

        function StartInstallVim ()
        {
            InstallerVimDeb
            wait
            InstallerVimBashSupport
            wait
        }	

        StartInstallVim
}
#-------------------------------------
#-------------------------------------
function InstallOhMyZsh ()
{
        function InstallZSH ()
        {
            sudo apt-get install zsh
        }

        function InstallOhMyZSH ()
        {
            #Install oh-my-zsh
            sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
            wait
            # Copy default .zshrc file to home
            cp $HOME/bin/files/home/brettsalemink/.zshrc $HOME/.zshrc
            wait
            echo 'Oh My ZSH installed.'

        }

        function StartInstallOhMyZsh ()
        {
            InstallZSH
            wait
            InstallOhMyZSH
            wait
        }	# end Main

        StartInstallOhMyZsh
}
#-------------------------------------
#-------------------------------------
function InstallTmux () 
{
    sudo apt-get install tmux -y
}
#-------------------------------------
#-------------------------------------
function MakeDefaultDirectories ()
{
    if [ -d $HOME/development ]
	then
		echo "$HOME/development already exists."
	else
		mkdir $HOME/development
	fi	

	if [ -d $HOME/development/stiles69 ]
	then
		echo "$HOME/development/stiles69 already exists."
	else
		mkdir -p $HOME/development/stiles69
	fi

	if [ -d $HOME/development/Docker ]
	then
		echo "$HOME/development/Docker directory already exists."
	else
		mkdir -p $HOME/development/Docker
	fi

	if [ -d $HOME/Downloads ]
	then
		echo "$HOME/Downloads directory already exists."
	else
		mkdir $HOME/Downloads
	fi
}
#-------------------------------------
#-------------------------------------
function Main ()
{
    InstallGit
    wait
    CloneBin
    wait
    CloneSh
    wait
    InstallVim
    wait
    InstallOhMyZsh
    wait
    InstallTmux
    wait
    MakeDefaultDirectories
    wait
    echo 'Installation Complete'
}	
#-------------------------------------
Main

#===EXIT===
exit 0