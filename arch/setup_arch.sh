#!/bin/bash

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
                wl-clipbboard xclip bat starship tree nmap net-tools \
                bash-completion

# tmux package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

mkdir -p "$(bat --config-dir)/themes"
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme
echo '--theme="Catppuccin Mocha"' >> $(bat --config-file)
bat cache --build

echo 'export PATH=$PATH:$HOME/.platformio/penv/bin/platformio' >> ~/.bashrc
echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.bashrc

# codeing related
yay -S visual-studio-code-bin
curl -fsSL -o get-platformio.py https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py
python3 get-platformio.py

sudo pacman -S gnome-terminal docker docker-compose 
sudo usermod -aG docker $USER

# initialization of terminal tools

# Use bash-completion, if available
echo '[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \' >> ~/.bashrc
echo '    . /usr/share/bash-completion/bash_completion' >> ~/.bashrc

echo 'eval "$(zoxide init bash)"' >> ~/.bashrc
echo 'eval "$(fzf --bash)"' >> ~/.bashrc
echo 'eval "$(starship init bash)"' >> ~/.bashrc

