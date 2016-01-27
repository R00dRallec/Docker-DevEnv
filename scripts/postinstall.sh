#!/bin/bash

# basic update
apt-get -y update
apt-get -y upgrade

# install apps
apt-get -y install vim git
# useful tools
apt-get -y install nmon ncdu dstat ccze
# Description see: http://www.unixmen.com/10-useful-utilities-linux-users

# user
pass=$(perl -e 'print crypt($ARGV[0], "password")' dev)
useradd -m -p $pass 'dev'

# user specific settings

# bash settings
su -m dev -c echo "alias ll='ls -l'" >> ~/.bashrc
su -m dev -c echo "alias la='ls -a'" >> ~/.bashrc
su -m dev -c echo "alias lla='ls -la'" >> ~/.bashrc

# vim coloring
su -m dev -c git clone git://github.com/altercation/vim-colors-solarized.git ~/cloned-bundle
su -m dev -c cp -r ~/cloned-bundle/* ~/.vim/bundle
su -m dev -c echo "syntax enable" >> ~/.vimrc
su -m dev -c echo "set background=dark" >> ~/.vimrc
su -m dev -c echo "colorscheme solarized" >> ~/.vimrc

# invoke vim_install.sh
su -m dev -c sh vim_install.sh

# Clean up
su -m dev -c rm -rf ~/cloned-bundle
su -m dev -c rm -rf ~/gnome-terminal-colors-solarized

# prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo "===================="
echo ""
