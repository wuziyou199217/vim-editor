#!/bin/sh
set -e

cd ~/.vim

echo 'set runtimepath+=~/.vim

try
source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins.vim
catch
endtry' > ~/.vimrc

echo "Personal Vim configuration installed"
