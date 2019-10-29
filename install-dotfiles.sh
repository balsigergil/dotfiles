#!/usr/bin/env bash

# Installation des paquets requis
sudo pacman -S --needed \
	git \
	i3-gaps i3lock \
	xss-lock \
	rofi \
	kitty \
	xorg-server xcompmgr xwallpaper xorg-xrdb \
	xf86-input-{keyboard,mouse,libinput} \
	redshift \
	neofetch \
	playerctl \
	ttf-font-awesome ttf-dejavu ttf-bitstream-vera ttf-inconsolata \
	pulseaudio pulseaudio-alsa pulseaudio-bluetooth

# Installation de polybar
polybar --version
if [ $? -ne 0 ];
then
	git clone https://aur.archlinux.org/polybar.git
	cd polybar
	makepkg -si
	cd ..
	rm -rf polybar
fi

# Copie des fichiers de configuration
echo
echo "Installation des dotfiles"
echo
install -Dm644 config/wall.png $HOME/.config/wall.png
install -Dm644 config/wall_blur.png $HOME/.config/wall_blur.png
install -Dm644 config/i3/config $HOME/.config/i3/config
install -Dm644 config/polybar/config $HOME/.config/polybar/config
install -Dm644 config/rofi/config $HOME/.config/rofi/config
install -Dm644 config/redshift/redshift.conf $HOME/.config/redshift/redshift.conf
install -Dm644 .Xresources $HOME/.Xresources
install -Dm644 config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf

sudo install -Dm644 etc/X11/xorg.conf.d/40-libinput.conf /etc/X11/xorg.conf.d/40-libinput.conf

echo
echo "Installation terminée !!!"
echo

exit 0
