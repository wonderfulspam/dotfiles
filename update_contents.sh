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
cp ~/.perlcriticrc config/perlcriticrc