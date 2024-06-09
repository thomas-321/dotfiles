/!bin/bash

# Install yay
https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER yay-git
cd yay-git
makepkg -si
yay -Suy


# Install packages
sudo pacman -S obsidian discord chromium firefox inkscape gimp libreoffice-fresh 

#install programming languages
sudo pacman -S python3 jdk21-openjdk clang cargo maven nodejs
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


# install fonts


# install turminal applications
sudo pacman -S zoxide ripgrep fzf npm neovim tmux curl wget openssh git \
                wl-clipbboard xclip






# codeing related
yay -S visual-studio-code-bin
