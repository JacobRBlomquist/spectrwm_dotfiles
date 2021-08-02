# Dotfiles

These Jacob Blomquist's dotfiles for his Spectrwm Arch Build.

## Important Files/Directories

* `~/.bashrc`
* `~/.config/nvim`
* `~/.config/spectrwm`
* `~/.config/polybar`
* `~/.local/bin`
* `~/.screenlayout`
* `~/.xinitrc`

## Packages

### On Install

* base, base-devel, linux, linux-firmware
* neovim, vi, vim
* networkmanager
* which
* man-db, man-pages
* grub
* xdg-utils, xdg-user-dirs
* git

### After Installation (Pacman)

* xorg, xorg-xinit
* spectrwm
* rofi
* dmenu (for backwards compatibility) 
* tmux
* arandr
* alacritty
* network-manager-applet
* htop
* neofetch
* pulseaudio, pulseaudio-alsa
* mate-calc (i like this calculator)
* code
* engrampa
* pcmanfm
* numlockx
* lxappearance
* trash-cli
* xlockmore
* volumeicon

#### Fonts

* ttf-font-awesome
* noto-fonts
* noto-fonts-emoji
* ttf-liberation
* (aur) ttf-nerd-fonts-hack-complete-git

### After Installation (AUR)

AUR helper is PARU:

`git clone https://aur.archlinux.org/paru.git`

`cd paru && makepkg -si`

* polybar
* gotop
* brave-bin

