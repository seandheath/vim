#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
rm ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc
vim +PlugInstall +qall > /dev/null
cd ~/.vim/plugged/YouCompleteMe
python3 install.py
