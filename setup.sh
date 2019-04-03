#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
rm ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc
mkdir ~/.config/nvim
rm ~/.config/init.vim
rm -rf ~/.config/nvim/autoload
ln -s ~/.vim/vimrc ~/.config/nvim/init.vim
ln -s ~/.vim/autoload/ ~/.config/nvim/autoload
vim +PlugInstall +qall > /dev/null
