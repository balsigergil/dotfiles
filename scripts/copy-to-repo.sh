#!/usr/bin/bash

cp ~/.config/starship.toml ./config/
cp -R ~/.config/nvim ./config/
mkdir -p ./config/pypoetry
cp ~/.config/pypoetry/config.toml ./config/pypoetry/config.toml
mkdir -p ./config/vscode
cp /mnt/c/Users/gilba/AppData/Roaming/Code/User/settings.json ./config/vscode/settings.json

cp ~/.zshrc .zshrc
cp ~/.vimrc .vimrc