#!/bin/bash


set -e

REPO_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
HOME_DIR="$HOME"

mkdir -p "$HOME_DIR/.sway"
mkdir -p "$HOME_DIR/.config"

cp -a "$REPO_DIR/.sway/." "$HOME_DIR/.sway/"
cp -a "$REPO_DIR/.config/." "$HOME_DIR/.config/"

mkdir -p ~/.local/share/fonts/JetBrainsMonoNerdFont
cd ~/.local/share/fonts/JetBrainsMonoNerdFont

curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm JetBrainsMono.zip

fc-cache -fv

echo "Installed dotfiles successfully"
echo "Installing Neovim"
sudo dnf install neovim
echo "Installing Helium Browser"
sudo dnf enable input/helium
sudo dnf install helium-bin
