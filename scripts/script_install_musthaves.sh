#!/bin/bash

# install zioxide terminal navigation
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
echo 'export PATH=$PATH:/home/thomas/.local/bin' >> ~/.bashrc
echo 'eval "$(zoxide init bash)"' >> ~/.bashrc

# install fzf fuzzy finder -> needed to run zi
sudo apt install fzf -y
