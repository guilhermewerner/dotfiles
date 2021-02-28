#!/usr/bin/env sh

cd ~

# Linux

if [ "$(expr substr $(uname -s) 1 5)" = "Linux" ]
then
    # Update System

    sudo apt update
    sudo apt upgrade -y

    # Powershell

    sudo apt install wget apt-transport-https software-properties-common -y

    wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb

    sudo dpkg -i packages-microsoft-prod.deb

    sudo apt update

    sudo add-apt-repository universe
    sudo add-apt-repository multiverse

    sudo apt update

    sudo apt-get install powershell -y

# Mac

elif [ "$(uname)" = "Darwin" ]
then
    echo "Mac"
fi
