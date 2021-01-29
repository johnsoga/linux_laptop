#!/bin/bash


##### UPDATE OS
apt update && apt upgrade

##### INSTALL PACKAGES
# Install VMWare specific software if running in VMWare VM
if lspci | grep -i vmware > /dev/null 2>1; then
    apt install open-vm-tools open-vm-tools-desktop
fi

# Essential Packages
apt install htop vim i3 feh conky xorg sudo curl firefox-esr pulseaudio pavucontrol ufw terminator
