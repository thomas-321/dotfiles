#!/bin/bash
#
# script for replacing pulseaudio with pipewire


# Add PipeWire repository
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream
sudo apt update

# Install PipeWire
sudo apt install pipewire pipewire-pulse
sudo apt install pipewire-audio-client-libraries
sudo apt install gstreamer1.0-pipewire libspa-0.2-bluetooth libspa-0.2-jack

# Set PipeWire as default audio deamon
systemctl --user stop pulseaudio.service pulseaudio.socket
systemctl --user disable pulseaudio.service pulseaudio.socket
systemctl --user mask pulseaudio.service pulseaudio.socket
systemctl --user enable pipewire.socket pipewire-pulse.socket
systemctl --user start pipewire.socket pipewire-pulse.socket

echo "Reboot the system to start using PipeWire"
