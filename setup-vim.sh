#!/usr/bin/env bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

pushd ~/.vim/bundle/command-t/ruby/command-t/
ruby extconf.rb
make
popd
