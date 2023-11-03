#!/bin/bash

echo "start install.sh"

cp -f ~/dotfiles/.bashrc ~
cp -f ~/dotfiles/.zshrc ~

mkdir $HOME/.config

apt install -y zsh

curl -sS https://starship.rs/install.sh | sh --yes
