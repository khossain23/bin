#!/bin/bash

# System update.
sudo apt-get -y update

# Pull bin and dotfiles.
git clone https://github.com/twesleyb/bin.git
git clone https://github.com/twesleyb/dotfiles.git

# Configure bash.
~/dotfiles/config

# Link key Windows directories.
ln -s "/mnt/c/Users/Tyler Bradshaw/Downloads/" ~/downloads
ln -s "/mnt/d/projects/" ~/projects
