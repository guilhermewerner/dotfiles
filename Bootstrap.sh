#!/usr/bin/env sh

DEBIAN_FRONTEND=noninteractive

# Update

sudo apt update && sudo apt upgrade -y

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
    htop \
    libc6-dev \
    libssl-dev \
    libudev-dev \
    llvm \
    lsb-release \
    youtube-dl \
    make \
    mono-complete \
    nano \
    neofetch \
    nginx \
    ninja-build \
    python3 \
    samba \
    tar \
    ufw \
    unzip \
    wget \
    xz-utils \
    zsh

# Rust

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
rustup toolchain install nightly
rustup +nightly component add rust-src

# ASDF

git clone https://github.com/asdf-vm/asdf ~/.asdf

asdf plugin add dotnet https://github.com/hensou/asdf-dotnet
asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang
asdf plugin add golang https://github.com/kennyp/asdf-golang
asdf plugin add gradle https://github.com/rfrancis/asdf-gradle
asdf plugin add groovy https://github.com/weibemoura/asdf-groovy
asdf plugin add haskell https://github.com/vic/asdf-haskell
asdf plugin add java https://github.com/halcyon/asdf-java
asdf plugin add kotlin https://github.com/asdf-community/asdf-kotlin
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs
asdf plugin add php https://github.com/asdf-community/asdf-php
asdf plugin add python https://github.com/danhper/asdf-python
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby
asdf plugin add scala https://github.com/asdf-community/asdf-scala

# Docker

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo usermod -aG docker $USER
newgrp docker
docker version

docker pull cassandra:latest
docker pull getmeili/meilisearch:v0.28
docker pull mariasvc:10.9.3
docker pull mongo:latest
docker pull mysql:8.0.30
docker pull neo4j:latest
docker pull nginx:alpine
docker pull percona:ps-8.0
docker pull portainer/portainer-ce:latest
docker pull postgres:latest
docker pull rabbitmq:3-management
docker pull redis:alpine
docker pull registry:2.7

# Git

cp ./Config/.gitconfig ~/.gitconfig

# SSH

mkdir ~/.ssh
cp ./Config/.ssh/config ~/.ssh/config

# ZSH

cp ./Config/.zshrc ~/.zshrc

# Firewall

sudo ufw allow 5000
sudo ufw allow 7000
sudo ufw allow 8000
sudo ufw allow 9443

sudo ufw allow "Nginx Full"
sudo ufw allow "OpenSSH"
sudo ufw allow "Samba"

# Shell

mkdir ~/.config
cp ./Config/starship.toml ~/.config/starship.toml
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
curl -sS https://starship.rs/install.sh | sh
chsh -s $(which zsh)

# Reboot

sudo ufw enable
sudo reboot now
