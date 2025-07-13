#!/usr/bin/bash

# add repositories

yes | sudo apt update
yes | sudo apt upgrade

# install packages
yes | sudo apt install i3
yes | sudo apt install vlc gparted
yes | sudo apt install git
yes | sudo apt install stow

yes | curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
yes | nvm install 18

yes | curl -LsSf https://astral.sh/uv/install.sh | bash

# stow config

