#!/bin/bash

# First (dependency's)
    mkdir -p ~/Programs
    sudo apt install snapd -y               # install snapd                     (for discord en mqtt-explorer)
    sudo apt install zip -y                 # for .zip files
    sudo apt install protobuf-compiler -y   # dependency for neovim setup
    sudo apt-get install git -y             # install git
    git config --global user.name "Thomas van Vliet"
    git config --global user.email "113383928+thomas-321@users.noreply.github.com"

    sudo apt-get install ripgrep -y         # om grep te gebruiken in nvim
    sudo apt install python3.8-venv -y      # python lsp
    sudo apt-get install wget -y
    sudo apt-get install gpg -y
    sudo apt install pkg-config -y          # voor asm-lsp
    sudo apt update

# programming language's en compilers
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
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# github cli
    type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
    && sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && sudo apt update \
    && sudo apt install gh -y


