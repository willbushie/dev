#!/bin/bash

#TODO - ensure ripgrep is installed (suggested for telescope)

set -e

echo "Bootstrapping system..."

# Ensure required directories exist
mkdir -p ~/.config/nvim

# Install packer.nvim if not already installed
PACKER_DIR=~/.local/share/nvim/site/pack/packer/start/packer.nvim

if [ ! -d "$PACKER_DIR" ]; then
    echo "Installing packer.nvim..."
    git clone --depth 1 https://github.com/wbthomason/packer.nvim "$PACKER_DIR"
else
    echo "packer.nvim already installed"
fi

# Install Neovim plugins
echo "Installing Neovim plugins via packer..."
nvim --headless +PackerSync +qa

echo "Done"

