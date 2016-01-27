#!/bin/bash

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Configure vimrc
#wget https://raw.githubusercontent.com/R00dRallec/stuff/master/settings/vimrc ~/.vimrc
mv ~/.vimrc ~/.vimrc.bak
cp ../settings/vimrc ~/.vimrc

# install powerline roboto font
git clone https://github.com/powerline/fonts.git ~/fonts
font_dir="$HOME/.local/share/fonts"
mkdir -p $font_dir
cp fonts/RobotoMono/* $font_dir

# Reset font cache on Linux
if command -v fc-cache @>/dev/null ; then
    echo "Resetting font cache, this may take a moment..."
    fc-cache -f $font_dir
fi

echo "Roboto Powerline font installed to $font_dir"

# clean up
rm -rf ~/fonts

vim +PluginInstall +qall

echo "Done Vim Install"
