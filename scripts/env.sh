#!/usr/bin/env bash
cd ~
mkdir ~/.config

git clone https://github.com/Discr3te/.dotfiles.git

#symlink
ln -s ~/.dotfiles/alacritty ~/.config/alacritty
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/karabiner ~/.config/karabiner
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
