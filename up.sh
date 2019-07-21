#!/bin/bash

## Update - update your linux system.

# Exit Bash on error.
set -e

update() {
echo "Starting system update..."
sudo apt-get update
sudo apt-get dist-upgrade -yy
}

update

