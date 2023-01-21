#!/usr/bin/env sh

# Change Password

passwd

# Add User

adduser guilherme
sudo usermod -aG sudo guilherme
passwd guilherme

# Update

sudo apt update && sudo apt upgrade -y

# Dependencies

sudo apt install -y --no-install-recommends \
    autoconf \
    automake \
    bash \
    ca-certificates \
    clang \
    cmake \
    curl \
    ffmpeg \
    file \
    g++ \
    gcc \
    gh \
    git \
    gnupg \
    gzip \
    htop \
    iputils-ping \
    libc6-dev \
    libluajit-5.1-dev \
    libncurses5-dev \
    libssl-dev \
    libudev-dev \
    llvm \
    lsb-release \
    make \
    mono-complete \
    nano \
    neofetch \
    nginx \
    ninja-build \
    python3 \
    tar \
    unzip \
    wget \
    xz-utils \
    youtube-dl \
    zsh

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
