/!bin/bash

# Install yay
https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER yay-git
cd yay-git
makepkg -si
yay -Suy


# Install packages
pacman -S obsidian discord chromium firefox inkscape gimp libreoffice-fresh 











# codeing related
pacman -S neovim tmux curl wget npm nodejs python openssh git
yay -S visual-studio-code-bin
