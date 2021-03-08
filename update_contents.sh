#!/bin/bash

### VSCode ###
# Get latest list of extensions and write installer to file
echo "#!/bin/bash" > vscode/install_vscode_extensions.sh
code --list-extensions | xargs -L 1 echo code --install-extension >> vscode/install_vscode_extensions.sh

# Copy current config
cp ~/.config/Code/User/settings.json vscode/

### Rust ###
# Generate installation script for all packages
EXCLUDED_RUST_PACKAGES="rudiments|cargo-espflash"
cargo install-update -l | grep -oP "^([a-zA-Z0-9-_]*)(?=\s+v.*v.*)" |\
	sort |\
	egrep -v "$EXCLUDED_RUST_PACKAGES" |\
	xargs -L 1 echo cargo install > install_rust_crates.sh

### Various config ###
cp ~/.gitconfig git/gitconfig
cp -r ~/.config/globalhooks/ git/
cp ~/.ssh/config config/sshconfig
cp ~/.bashrc config/bashrc
cp ~/.perlcriticrc config/perlcriticrc
cp ~/.config/starship.toml config/starship.toml
cp ~/.config/alacritty/alacritty.yml config/alacritty.yml
cp -r ~/.config/fish/ config/

### NVIM ###
cp -r ~/.config/nvim/* config/nvim/ && rm -rf config/nvim/plugged/

### LeftWM ###
cp -rL ~/.config/leftwm/* config/leftwm/
