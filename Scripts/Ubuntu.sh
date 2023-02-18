#!/usr/bin/env sh

export DEBIAN_FRONTEND=noninteractive

# Update

sudo DEBIAN_FRONTEND=noninteractive apt update && sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y

# Dependencies

sudo DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
    bash \
    ca-certificates \
    curl \
    git \
    gnupg \
    gzip \
    htop \
    iputils-ping \
    lsb-release \
    nano \
    neofetch \
    net-tools \
    python3 \
    qemu-guest-agent \
    tar \
    ufw \
    unzip \
    wget

# Firewall

sudo ufw allow "OpenSSH"
sudo ufw enable
