#!/bin/bash

vimPlugPath="$HOME/.local/share/nvim/site/autoload/plug.vim"

if ! test -f $path; then
  curl -fLo $path --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

cd $HOME/dotfiles
stow .
