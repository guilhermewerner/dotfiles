#!/usr/bin/env sh

# Tools

git clone https://github.com/asdf-vm/asdf ~/.asdf

echo $'. $HOME/.asdf/asdf.sh\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

# Java

asdf plugin add java https://github.com/halcyon/asdf-java
asdf install java temurin-19.0.1+10
asdf global java temurin-19.0.1+10

# Firewall

sudo ufw allow 25565
sudo ufw allow 25566
sudo ufw allow 25567
sudo ufw allow 25568
sudo ufw allow 25569
sudo ufw reload
