#!/bin/bash

# Add the neovim repository and install neovim
sudo add-apt-repository  ppa:neovim-ppa/unstable
sudo apt-get install neovim -y

# Install wl-clipboard to enable interacting with global clipboard
sudo apt install wl-clipboard -y 

# Move personal config files
cp -r ../nvim $HOME/.config

# Setup Packer package manager
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Use :PackerSync in nvim to finish the setup"
