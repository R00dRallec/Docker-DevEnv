#!/bin/bash

# basic update
apt-get -y update
apt-get -y upgrade

# install apps
apt-get -y install vim git
# useful tools
apt-get -y install nmon ncdu dstat ccze
# Description see: http://www.unixmen.com/10-useful-utilities-linux-users

# folders
rm -rf ~/Documents
rm -rf ~/Public
rm -rf ~/Templates
rm -rf ~/Videos
rm -rf ~/Music
rm ~/examples.desktop
mkdir -p ~/Development

# users

pass=$(perl -e 'print crypt($ARGV[0], "password")' dev)
useradd -m -p $pass 'dev'

# user specific settings
su dev

# bash settings
echo "alias ll='ls -l'" >> ~/.bashrc
echo "alias la='ls -a'" >> ~/.bashrc
echo "alias lla='ls -la'" >> ~/.bashrc

# vim coloring
git clone git://github.com/altercation/vim-colors-solarized.git ~/cloned-bundle
cp -r ~/cloned-bundle/* ~/.vim/bundle
echo "syntax enable" >> ~/.vimrc
echo "set background=dark" >> ~/.vimrc
echo "colorscheme solarized" >> ~/.vimrc

# invoke vim_install.sh
sh vim_install.sh

# Clean up
rm -rf ~/cloned-bundle
rm -rf ~/gnome-terminal-colors-solarized

# prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo "===================="
echo ""
