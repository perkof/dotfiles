#!/usr/bin/env bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

pushd ~/.vim/bundle/command-t/ruby/command-t/
ruby extconf.rb
make
popd

pip install websocket-client sexpdata

pushd ~
mkdir ycm_build
pushd ycm_build
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core --config Release
popd
popd
