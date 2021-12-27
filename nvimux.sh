#!/bin/bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    *)          machine="UNKNOWN:${unameOut}"
esac

echo "Backing up ~/.config/nvim ~/.config/nvim.bak"
mv ~/.config/nvim ~/.config/nvim.bak

if [[ $machine == "Linux" ]]; then
    cp -r ./.config/* ~/.config
fi

cp ./.tmux.conf ~/
cp ./.clipper.json ~/

nvim +PlugInstall
