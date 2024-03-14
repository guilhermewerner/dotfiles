#!/usr/bin/env sh

touch ~/.hushlogin

# Create User

sudo adduser guilherme
sudo usermod -aG sudo guilherme

# Update

export DEBIAN_FRONTEND=noninteractive

sudo DEBIAN_FRONTEND=noninteractive apt update && sudo apt upgrade -y

# Dependencies

sudo DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
    bash \
    ca-certificates \
    curl \
    file \
    gh \
    git \
    gnupg \
    gzip \
    htop \
    iputils-ping \
    lsb-release \
    nano \
    neofetch \
    python3 \
    samba \
    tar \
    unzip \
    wget \
    xz-utils \
    zsh

sudo DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
    autoconf \
    automake \
    clang \
    cmake \
    ffmpeg \
    g++ \
    gcc \
    libc6-dev \
    libluajit-5.1-dev \
    libncurses5-dev \
    libssl-dev \
    libudev-dev \
    llvm \
    make \
    mono-complete \
    ninja-build \
    youtube-dl

# PowerShell

sudo snap install powershell --classic

# Git

cp ./Config/.gitconfig ~/.gitconfig

# SSH

mkdir ~/.ssh
cp ./Config/.ssh/config ~/.ssh/config

# ZSH

cp ./Config/.zshrc ~/.zshrc

# Shell

mkdir ~/.config
cp ./Config/starship.toml ~/.config/starship.toml
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
curl -sS https://starship.rs/install.sh | sh
chsh -s $(which zsh)

# Rust

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
rustup toolchain install nightly
rustup +nightly component add rust-src

# Tools

git clone https://github.com/asdf-vm/asdf ~/.asdf

cargo install --force \
    bandwhich \
    bat \
    cbindgen \
    du-dust \
    fd-find \
    grex \
    hyperfine \
    naga-cli \
    procs \
    ripgrep \
    rmesg \
    sd \
    tokei \
    wasm-bindgen-cli \
    ytop

# Docker

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo DEBIAN_FRONTEND=noninteractive apt update
sudo DEBIAN_FRONTEND=noninteractive apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo usermod -aG docker $USER
newgrp docker
docker version
