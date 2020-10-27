#!/bin/bash

### VSCode ###
# Get latest list of extensions and write installer to file
code --list-extensions | xargs -L 1 echo code --install-extension > vscode/install_vscode_extensions.sh

# Copy current config
cp ~/.config/Code/User/settings.json vscode/


### Various config ###
cp ~/.gitconfig git/gitconfig
cp ~/.ssh/config config/sshconfig
cp ~/.bashrc config/bashrc
cp ~/.bash_it/custom/themes/emil/emil.theme.bash config/emil.theme.bash
cp ~/.perlcriticrc config/perlcriticrc
cp ~/.config/starship.toml config/starship.toml
cp ~/.config/alacritty/alacritty.yml config/alacritty.yml

### NVIM ###
cp -r ~/.config/nvim/* config/nvim/ && rm -rf config/nvim/plugged/

### LeftWM ###
cp -rL ~/.config/leftwm/* config/leftwm/
