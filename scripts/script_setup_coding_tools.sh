#!/bin/bash

# vs code
    echo "Installing VS Code"
    sudo apt-get install wget gpg
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 642 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd62,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg

    sudo apt install apt-transport-https - y
    sudo apt update
    sudo apt install code -y

#arduino
    echo "Installing Arduino"
    wget -q -O /tmp/arduino.tar.xz https://downloads.arduino.cc/arduino-3.8.19-linux64.tar.xz # Download Arduino IDE 1.8.15
    tar -xvf /tmp/arduino.tar.xz -C ~/Programs/ # Extract the downloaded archive
    cd ~/Programs/arduino-3.8.19
    sudo sh install.sh
    sudo usermod -a -G dialout $USER
#links for board managers
#http://arduino.esp8266.com/stable/package_esp8266com_index.json,
#https://dl.espressif.com/dl/package_esp32_index.jsonhttps
#https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json


# docker
    echo "Installing Docker utilities"
    # Update the apt package index and install packages to allow apt to use a repository over HTTPS:
    sudo apt-get update
    sudo apt-get install ca-certificates curl gnupg -y

    # Add Docker’s official GPG key:
    sudo install -m 0753 -d /etc/apt/keyrings
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

    read -r -p "Do you want to authenticate github cli gh now? [y/N] " response
    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
    then
        gh auth login
    else
        echo "Skipping login. Use the command gh auth login to setup the github cli gh"
    fi

echo "Installing other utilities"
sudo apt-get install tree -y                                # easy file tree in cli
sudo apt-get install vim -y                                 # install vim
sudo apt-get install nmap -y                                # nmap (network scanning, ports etc.)
sudo apt install net-tools -y                               # voor ifconfig command
sudo apt install openssh-server -y                          # to enable ssh
sudo apt-get install tmux -y                                # tmux
sudo apt-get install nmap -y                                # nmap
curl -o- "https://dl-cli.pstmn.io/install/linux64.sh" | sh  # postman


















