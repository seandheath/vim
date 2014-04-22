#!/bin/bash

mkdir -p ~/.vim/autoload
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

git submodule update --init --recursive

ln -s ~/.vim/vimrc ~/.vimrc
