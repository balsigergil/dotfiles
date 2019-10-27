#!/usr/bin/env bash

# Installation des paquets requis
sudo pacman -S --needed \
	git \
	i3-gaps \
	xss-lock \
	rofi \
	xorg-server xcompmgr xwallpaper xorg-xrdb \
	redshift \
	neofetch \
	playerctl \
	ttf-font-awesome \
	ttf-dejavu ttf-bitstream-vera \
	pulseaudio pulseaudio-alsa pulseaudio-bluetooth

# Installation de polybar
git clone https://aur.archlinux.org/polybar.git
cd polybar
makepkg -si
cd ..
rm -rf polybar

# Copie des fichiers de configuration
install -Dm644 config/i3/config $HOME/.config/i3/config
install -Dm644 config/polybar/config $HOME/.config/polybar/config
install -Dm644 config/rofi/config $HOME/.config/rofi/config
install -Dm644 config/redshift/redshift.conf $HOME/.config/redshift/redshift.conf
install -Dm644 config/wall.png $HOME/.config/wall.png
