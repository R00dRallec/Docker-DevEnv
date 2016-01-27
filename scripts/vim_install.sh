!#/bin/bash

# os installs
sudo apt-get update
sudo apt-get install vim -y

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Configure vimrc
#wget https://raw.githubusercontent.com/R00dRallec/stuff/master/settings/vimrc ~/.vimrc
mv ~/.vimrc ~/.vimrc.bak
cp ../settings/vimrc ~/.vimrc

vim +PluginInstall +qall

echo "Done"
