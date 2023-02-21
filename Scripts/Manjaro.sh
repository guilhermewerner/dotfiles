#!/usr/bin/env sh

# Initialize Keyring

sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -Sy archlinux-keyring
sudo pacman -Su

# Dependencies

sudo pacman -S \
    autoconf \
    automake \
    clang \
    cmake \
    curl \
    ffmpeg \
    gcc \
    git \
    github-cli \
    gzip \
    htop \
    llvm \
    make \
    mono \
    nano \
    neofetch \
    nginx \
    ninja \
    python \
    tar \
    unzip \
    wget \
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
xir 1.14.2-otp-25

# Shell

mkdir ~/.config
cp ./Config/starship.toml ~/.config/starship.toml
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
curl -sS https://starship.rs/install.sh | sh
chsh -s /usr/bin/zsh
