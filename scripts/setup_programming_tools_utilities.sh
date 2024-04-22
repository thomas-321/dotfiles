#!/bin/bash

# Install the following programming tools and utilities:

## dependicies

# First (dependency's)
    mkdir -p ~/Programs
    sudo apt install nala -y                # install nala
    sudo nala fetch
    sudo apt install curl -y                # install curl
    sudo apt install snapd -y               # install snapd                     (for discord en mqtt-explorer)
    sudo apt install zip -y                 # for .zip files
    sudo apt install protobuf-compiler -y   # dependency for neovim setup
    sudo apt-get install git -y             # install git

    sudo apt-get install ripgrep -y         # om grep te gebruiken in nvim
    sudo apt install python3.8-venv -y      # python lsp
    sudo apt-get install wget -y
    sudo apt-get install gpg -y
    sudo apt install pkg-config -y          # voor asm-lsp
    sudo apt update




## programming languages
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh # Haskall
    sudo apt install build-essential -y                             # build essentials (multiple languages)
    curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh  # install rust
    source $HOME/.cargo/env                                         # add rust toolchain to path
    sudo apt install cargo -y                                       # install rust package manager
    sudo apt install python3 -y                                     # install python 3
    sudo apt install clang -y                                       # c/c++ (nvim lsp) 
    sudo apt-get install gcc -y                                     # install gcc (c,c++ compiler)
    sudo apt-get install openjdk-17-jdk -y                          # java
    sudo apt-get install openjdk-19-jdk -y                          # java
    sudo apt install maven -y                                       # java build tool (dependency for neovim java lsp setup)
    sudo apt install nodejs -y                                      # nodejs
    sudo apt install npm -y                                         # nodejs package manager


## neovim
    # Add the neovim repository and install neovim
    sudo add-apt-repository  ppa:neovim-ppa/unstable
    sudo apt-get install neovim -y

    # Install wl-clipboard to enable interacting with global clipboard
    sudo apt install wl-clipboard -y 

    # needed for linters
    sudo apt install python3.10-venv -y


# Programs  
    # vs code
    sudo apt-get install wget gpg
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg

    sudo apt install apt-transport-https - y
    sudo apt update
    sudo apt install code -y

    #arduino
    wget -q -O /tmp/arduino.tar.xz https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz # Download Arduino IDE 1.8.15
    tar -xvf /tmp/arduino.tar.xz -C ~/Programs/ # Extract the downloaded archive
    cd ~/Programs/arduino-1.8.19
    sudo sh install.sh
    sudo usermod -a -G dialout $USER



    # docker
    # Update the apt package index and install packages to allow apt to use a repository over HTTPS:
    sudo apt-get update
    sudo apt-get install ca-certificates curl gnupg -y

    # Add Docker’s official GPG key:
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg

    # Use the following command to set up the repository:
    echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update

    # Install Docker Engine, containerd, and Docker Compose
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-compose -y


## changing the terminal
    # install starship
    curl -sS https://starship.rs/install.sh | sh
    sudo apt-get install dconf-cli
    git clone https://github.com/dracula/gnome-terminal
    cd gnome-terminal
    ./install.sh

    # Add the startup line to the bashrc
    echo 'eval "$(starship init bash)"' >> .bashrc

    # Seting up nerd font for icons
    font_url="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/UbuntuMono.zip"
    font_dir="$HOME/.fonts"
    mkdir -p $font_dir
    wget -O /tmp/UbuntuMono.zip $font_url
    unzip -o /tmp/UbuntuMono.zip -d $font_dir
    rm /tmp/UbuntuMono.zip
    gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono Nerd Font Regular 13'


## Handy tools

# install zioxide terminal navigation
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.bashrc
echo 'eval "$(zoxide init bash)"' >> ~/.bashrc

# install fzf fuzzy finder -> needed to run zi
sudo apt install fzf -y

 

echo "Installing other utilities"
sudo apt-get install tree -y                                # easy file tree in cli
sudo apt-get install vim -y                                 # install vim
sudo apt-get install nmap -y                                # nmap (network scanning, ports etc.)
sudo apt install net-tools -y                               # voor ifconfig command
sudo apt install openssh-server -y                          # to enable ssh
sudo apt-get install tmux -y                                # tmux
sudo apt-get install nmap -y                                # nmap
curl -o- "https://dl-cli.pstmn.io/install/linux64.sh" | sh  # postman



