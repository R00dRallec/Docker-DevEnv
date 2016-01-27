!#/bin/bash

# os installs
sudo apt-get update
sudo apt-get install vim -y

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Configure vimrc
wget https://raw.githubusercontent.com/R00dRallec/stuff/master/settings/vimrc ~/.vimrc

# install plugins
# install nerdtree at first bc comaptibility
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
cd
vim +PluginInstall +qall

echo "Done"
