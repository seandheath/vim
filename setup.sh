#!/bin/bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +qall > /dev/null
cd ~/.local/share/nvim/site/autoload/YouCompleteMe
python3 install.py --go-completer --ts-completer --rust-completer --clangd-completer
