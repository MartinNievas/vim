#!/bin/bash

echo "copying vimrc"
cp .vimrc ..

echo "copying fonts"
cp -r .fonts ..

echo "clone vim-sensible"
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-sensible.git

echo "clone nercommenter"
cd ~/.vim/bundle
git clone https://github.com/preservim/nerdcommenter.git

echo "clone vim-airline"
cd ~/.vim/bundle
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

echo "clone tagbar"
cd ~/.vim/bundle
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar

echo "clone vim-fugitive"
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-fugitive.git
