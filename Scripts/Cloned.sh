#!/usr/bin/env sh

sudo rm /etc/ssh/ssh_host_*
sudo dpkg-reconfigure openssh-server
