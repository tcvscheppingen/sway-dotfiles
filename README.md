# Sway Auto Rice

This repo contains my dotfiles for Sway, Waybar, Neovim color theme and Foot terminal.

The installation script is intended to be used with a fresh installation of Fedora Sway, but the dotfiles can be used without the script.

<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/f1ac910b-a0a1-4bf9-b28a-3a4d393d7df3" />

## Requirements
- Sway
- Waybar
- Foot
- Fedora (to install Neovim and Helium Browser with the script)

## What the script does
**Always check the contents of a script before running it***
`auto-rice.sh` does the following:
- Moves the dotfiles into the users home directory.
- Downloads and installs the JetBrains Mono Nerdfont.
- Installs Neovim
- Installs the browser that has been configured in `.sway/config` to be launched with a shortcut (`mod + w`)

## Installation with auto rice script

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

## Manual installation

1. Clone the repo:
```bash
git clone https://github.com/tcvscheppingen/sway-dotfiles.git
```

2. Create a folder for the JetBrains Mono Nerdfont:
```bash
mkdir -p ~/.local/share/fonts/JetBrainsMonoNerdFont
cd ~/.local/share/fonts/JetBrainsMonoNerdFont
```

3. Download and install the font:
```bash
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm JetBrainsMono.zip
```

4. Refresh font cache:
```bash
fc-cache -fv
```

5. Mode the dotfiles into the home folder:
```
mkdir -p ~/.sway
mkdir -p ~/.config
cd ~/sway-dotfiles # Or wherever you cloned the repo
cp -a .sway/. ~/.sway/
cp -a .config/. ~/.config/
```

6. (Optional) Install Helium Browser or change the default browser
A shortcut has been configured to launch a web browser. The Sway config has been set to launch Helium Browser.
You can either download Helium Browser:
```bash
dnf copr enable imput/helium
dnf install helium-bin
```

Or you can change the browser in `~/.sway/config`
```bash
set $browser helium # Change default browser
```

## Credits

Wallpaper: [Mikita Karasiou](https://unsplash.com/@starpollen)
