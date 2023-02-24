#!/usr/bin/env sh

export DEBIAN_FRONTEND=noninteractive

# Update

sudo DEBIAN_FRONTEND=noninteractive apt update && sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y

# Dependencies

sudo DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
    ca-certificates \
    curl \
    git \
    gzip \
    htop \
    iputils-ping \
    lsb-release \
    nano \
    neofetch \
    net-tools \
    qemu-guest-agent \
    tar \
    unzip \
    wget

# SSH

sudo rm /etc/ssh/ssh_host_*
sudo dpkg-reconfigure openssh-server
