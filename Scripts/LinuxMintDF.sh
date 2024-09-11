#!/bin/bash

# updates the system
sudo apt update -y
sudo apt upgrade -y

# installs wine
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-noble.sources
sudo apt update -y
sudo apt install --install-recommends winehq-stable -y

# installs flatpaks
flatpak install --user https://sober.vinegarhq.org/sober.flatpakref
flatpak install flathub com.google.Chrome
flatpak install flathub com.valvesoftware.Steam
