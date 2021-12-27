#!/bin/bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [[ $machine == "Linux" ]]; then
    cp -r ./.config/* ~/.config
fi

echo "Backing up ~/.config/nvim ~/.config/nvim.bak"
mv ~/.config/nvim ~/.config/nvim.bak

echo "Create ~/.config/nvim"
mkdir -p  ~/.config/nvim

cp ./.init.vim ~/.config/init.vim
cp ./.tmux.conf ~/
cp ./.clipper.json ~/

nvim +PlugInstall
