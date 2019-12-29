#!/bin/bash

IS_VMWARE="$(lspci | grep -i vmware > /dev/null 2>1; echo $?)"

##### UPDATE OS
apt update && apt upgrade

##### INSTALL PACKAGES
# VMWare specific software
if[ "$IS_VMWARE" ]; then
    apt install open-vm-tools open-vm-tool-desktop
fi
