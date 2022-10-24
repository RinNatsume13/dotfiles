#!/bin/bash
pacman -S nitrogen vicious rofi gvfs polkit-gnome lxappearance kvantum breeze-gtk breeze noto-fonts noto-fonts-cjk noto-fonts-emoji base-devel networkmanager network-manager-applet gst-plugin-pipewire  kpipewire pipewire  pipewire-alsa  pipewire-audio  pipewire-jack  pipewire-pulse  pavucontrol polkit-gnome neofetch lxrandr 

mkdir ~/.config/awesome
cd ~/.config/awesome && wget wget https://files.catbox.moe/msf60d.gz && tar -xf msf60d.gz

reboot
