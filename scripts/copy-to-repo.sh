#!/usr/bin/bash

rm -rf ./config

# Starship
mkdir -p ./config/starship
cp ~/.config/starship.toml ./config/starship/starship.toml

# Neovim
cp -R ~/.config/nvim ./config/

# VSCode
mkdir -p ./config/vscode
cp /mnt/c/Users/gilba/AppData/Roaming/Code/User/settings.json ./config/vscode/settings.json

cp ~/.zshrc .zshrc
cp ~/.vimrc .vimrc

