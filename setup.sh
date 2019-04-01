#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.vim/vimrc ~/.vimrc
mkdir ~/.config/nvim
ln -s ~/.vim/vimrc ~/.config/nvim/init.vim
ln -s ~/.vim/autoload/ ~/.config/nvim/autoload
vim +PlugInstall +qall > /dev/null
