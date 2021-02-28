#!/usr/bin/env pwsh

cd ~

# Windows

if ($IsWindows)
{

}

# Mac

elseif ($IsMacOS)
{
    # Homebrew

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # ZSH

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
}

# Linux

elseif ($IsLinux)
{
    # Base Dependencies

    sudo apt install git curl wget nano build-essential ffmpeg libssl-dev -y

    # ZSH

    sudo apt install zsh -y

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

    # GitHub CLI

    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0

    sudo apt-add-repository https://cli.github.com/packages

    sudo apt update

    sudo apt install gh -y

    # Java

    sudo apt install default-jre default-jdk -y

    # Docker

    sudo apt update

    sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

    sudo apt update

    apt-cache policy docker-ce

    sudo apt install docker-ce -y

    sudo systemctl status docker

    # Add User to Docker Group

    sudo usermod -aG docker ${USER}

    su - ${USER}

    id -nG

    # Pull Docker images

}