#!/usr/bin/env sh

sudo nano /etc/default/grub
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash video=hyperv_fb:1920x1080"
sudo apt install linux-image-extra-virtual
