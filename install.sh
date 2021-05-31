#!/bin/bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [[ $machine == "Mac" ]]; then
    brew install vim fzf ripgrep
elif [[ $machine == "Linux" ]]; then
    sudo apt -y install fzf ripgrep
fi

echo "Backing up ~/.vimrc to ~/.vimrc.bak"
mv ~/.vimrc ~/.vimrc.bak

echo "Backing up ~/.vim to ~/.vim.bak"
mv ~/.vim ~/.vim.bak

mkdir -p ~/.vim/pack/plugins/start
mkdir ~/.vim/undos

# Install color schemes

# Install PaperColor
mkdir -p ~/.vim/colors
curl -o ~/.vim/colors/PaperColor.vim https://raw.githubusercontent.com/NLKNguyen/papercolor-theme/master/colors/PaperColor.vim

# Install plugins

# install fzf.vim
rm -rf  ~/.vim/pack/plugins/start/fzf.vim
git clone https://github.com/junegunn/fzf.vim.git ~/.vim/pack/plugins/start/fzf.vim

# install vim-airline
rm -rf  ~/.vim/pack/plugins/start/vim-airline
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/pack/plugins/start/vim-airline

# install vim-go
rm -rf  ~/.vim/pack/plugins/start/vim-go
git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
vim +GoInstallBinaries +qall 

# install vim-terraform
rm -rf  ~/.vim/pack/plugins/start/vim-terraform
git clone https://github.com/hashivim/vim-terraform.git ~/.vim/pack/plugins/start/vim-terraform

# install vim-vinegar
# rm -rf  ~/.vim/pack/plugins/start/vim-vinegar
# git clone https://github.com/tpope/vim-vinegar.git ~/.vim/pack/plugins/start/vim-vinegar

# install vim-mucomplete
rm -rf  ~/.vim/pack/plugins/start/vim-mucomplete
git clone https://github.com/lifepillar/vim-mucomplete.git ~/.vim/pack/plugins/start/vim-mucomplete

# install languageclient-neovim
rm -rf  ~/.vim/pack/plugins/start/languageclient-neovim
git clone https://github.com/autozimu/Languageclient-neovim.git ~/.vim/pack/plugins/start/languageclient-neovim
(cd ~/.vim/pack/plugins/start/languageclient-neovim && bash install.sh)

# Install auto-pairs
mkdir -p ~/.vim/plugin
curl -o ~/.vim/plugin/auto-pairs.vim  https://raw.githubusercontent.com/jiangmiao/auto-pairs/master/plugin/auto-pairs.vim

cp ./.vimrc ~/

if [[ $machine == "Linux" ]]; then
    cp -r ./.config/* ~/.config
fi


