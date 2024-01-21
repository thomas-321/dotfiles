#!/bin/bash

# Define the URL for the UbuntuMono Nerd Font Regular
font_url="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/UbuntuMono.zip"

# Define the directory to download and extract the font
font_dir="$HOME/.fonts"

# Create the font directory if it doesn't exist
mkdir -p $font_dir

# Download and extract the font
echo "Downloading and extracting UbuntuMono Nerd Font Regular..."
wget -O /tmp/UbuntuMono.zip $font_url
unzip -o /tmp/UbuntuMono.zip -d $font_dir
rm /tmp/UbuntuMono.zip

# Set UbuntuMono Nerd Font Regular as the Monospace Text font
echo "Setting UbuntuMono Nerd Font Regular as Monospace Text font..."
gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono Nerd Font Regular 13'

echo "Font installation and configuration complete!"
