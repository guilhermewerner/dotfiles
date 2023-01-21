#!/usr/bin/env sh

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
    samba \
    tar \
    ufw \
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

# ASDF

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

# .NET

asdf install dotnet 7.0.100
asdf global dotnet 7.0.100

# Java

asdf install java temurin-19.0.1+10
asdf global java temurin-19.0.1+10

# Erlang

asdf install erlang 25.1.2
asdf global erlang 25.1.2

# Elixir

asdf install elixir 1.14.2-otp-25
asdf global elixir 1.14.2-otp-25

# Shell

mkdir ~/.config
cp ./Config/starship.toml ~/.config/starship.toml
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
curl -sS https://starship.rs/install.sh | sh
chsh -s $(which zsh)
