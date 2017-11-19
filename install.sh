#!/bin/sh

cd ~/.vim
ln -sf ~/.vim/vimrc ~/.vimrc
vim +PluginInstall +qall

