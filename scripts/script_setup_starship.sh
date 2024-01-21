#!/bin/bash

curl -sS https://starship.rs/install.sh | sh
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh

# Add the startup line to the bashrc
echo 'eval "$(starship init bash)"' >> .bashrc
