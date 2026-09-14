# Sway Auto Rice

This repo contains my dotfiles for Sway, Waybar, Neovim color theme and Foot terminal.

The installation script is intended to be used with a fresh installation of Fedora Sway, but the dotfiles can be used without the script.

## Requirements
- Sway
- Waybar
- Foot
- Fedora (to install Neovim and Helium Browser with the script)

## Installation

1. Clone the repo:
```bash
git clone https://github.com/tcvscheppingen/sway-dotfiles.git
```
2. Make the autorice script executable:
```bash
cd sway-dotfiles
sudo chmod +X auto-rice.sh
```
3. Run the installation script:
```bash
sh auto-rice.sh
```
4. Refresh Sway config (`mod + shift + c` by default)

## What the script does
**Always check the contents of a script before running it***
`auto-rice.sh` does the following:
- Moves the dotfiles into the users home directory.
- Downloads and installs the JetBrains Mono Nerdfont.
- Installs Neovim
- Installs the browser that has been configured in `.sway/config` to be launched with a shortcut (`mod + w`)
