#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install -y git curl nano build-essential ffmpeg

# ASDF

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

# Nginx

sudo apt install -y nginx

sudo ufw enable
sudo ufw allow 'Nginx HTTP'

# Node

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git

bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-previous-release-team-keyring'

npm i yarn -g

# Rust

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Python

sudo apt install -y python3-pip libssl-dev libffi-dev python3-dev python3-venv

# Redis

sudo apt install -y redis-server

# Java

sudo apt install -y default-jre default-jdk
