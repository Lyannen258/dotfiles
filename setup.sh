#!/bin/bash

vimPlugPath="$HOME/.local/share/nvim/site/autoload/plug.vim"

if ! test -f $vimPlugPath; then
    curl -fLo $vimPlugPath --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    nvim -c "PlugInstall" -c "qa"
fi

cd $HOME/dotfiles
stow .
