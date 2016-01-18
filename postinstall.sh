#!/bin/bash

# basic update
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

# install apps
sudo apt-get -y install vim git
# useful tools
sudo apt-get -y install nmon ncdu dstat ccze
# Description see: http://www.unixmen.com/10-useful-utilities-linux-users

# config keyboard layout
sudo apt-get install keyboard-configuration

# folders
rm -rf ~/Documents
rm -rf ~/Public
rm -rf ~/Templates
rm -rf ~/Videos
rm -rf ~/Music
rm ~/examples.desktop
mkdir ~/Development

# bash settings
echo "alias ll='ls -l'" >> ~/.bashrc
echo "alias la='ls -a'" >> ~/.bashrc
echo "alias lla='ls -la'" >> ~/.bashrc

## solarized color theme
# terminal - gnome
sudo apt-get -y install dconf-cli
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git ~
cd gnome-terminal-colors-solarized
PROFILE=$(gsettings list-recursively | grep "org.gnome.Terminal.ProfilesList default" | awk '{print $3}')
./install.sh -s dark -p $PROFILE

# vim coloring
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle
echo "syntax enable" >> ~/.vimrc
echo "set background=dark" >> ~/.vimrc
echo "colorscheme solarized" >> ~/.vimrc


# prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo "===================="
echo ""
