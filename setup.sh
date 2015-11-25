#!/bin/bash

mkdir -p ~/.vim/autoload

git submodule update --init --recursive
cp -r ~/.vim/bundle/vim-pathogen/autoload ~/.vim

ln -s ~/.vim/vimrc ~/.vimrc
