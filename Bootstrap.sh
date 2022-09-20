#!/usr/bin/env sh

# Configuration

cp ./Config/.gitconfig ~/.gitconfig

# Update

sudo apt update && sudo apt upgrade -y

# GitHub CLI

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages

# Dependencies
sudo apt install -y --no-install-recommends \
    bash \
    ca-certificates \
    clang \
    cmake \
    curl \
    ffmpeg \
    g++ \
    gcc \
    gh \
    git \
    gnupg \
    gzip \
    gzip \
    libc6-dev \
    libssl-dev \
    libudev-dev \
    llvm \
    make \
    mono-complete \
    nano \
    neofetch \
    ninja-build \
    python3 \
    tar \
    unzip \
    wget \
    xz-utils \
    zsh

# Rust

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup toolchain install nightly
rustup +nightly component add rust-src

# ASDF

git clone https://github.com/asdf-vm/asdf ~/.asdf --branch v0.10.0

asdf plugin add python https://github.com/danhper/asdf-python
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs
asdf plugin add java https://github.com/halcyon/asdf-java
asdf plugin add gradle https://github.com/rfrancis/asdf-gradle
asdf plugin add kotlin https://github.com/asdf-community/asdf-kotlin
asdf plugin add groovy https://github.com/weibemoura/asdf-groovy
asdf plugin add scala https://github.com/asdf-community/asdf-scala
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang
asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir
asdf plugin add golang https://github.com/kennyp/asdf-golang
asdf plugin add haskell https://github.com/vic/asdf-haskell
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby
asdf plugin add php https://github.com/asdf-community/asdf-php

# Mono

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt install mono-complete

# .NET

wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt update
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y dotnet-sdk-6.0

# Docker

sudo apt install -y gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-archive-keyring.gpg
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
newgrp docker
docker version

docker pull mysql
docker pull mongo
docker pull redis
docker pull elasticsearch
#docker pull memcached
#docker pull rabbitmq

# Snap

sudo snap install sosumi

# SSH

mkdir ~/.ssh
cp ./Config/.ssh/config ~/.ssh/config

# ZSH

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
