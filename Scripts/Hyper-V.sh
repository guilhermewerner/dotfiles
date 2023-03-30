#!/usr/bin/env sh

sudo nano /etc/default/grub
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash video=hyperv_fb:3840x2160"
sudo apt install linux-image-extra-virtual
