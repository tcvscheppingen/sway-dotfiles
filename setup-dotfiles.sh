#!/bin/bash


set -e

REPO_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
HOME_DIR="$HOME"

mkdir -p "$HOME_DIR/.sway"
mkdir -p "$HOME_DIR/.config"

cp -a "$REPO_DIR/.sway/." "$HOME_DIR/.sway/"
cp -a "$REPO_DIR/.config/." "$HOME_DIR/.config/"

echo "Dotfiles copied successfully."
