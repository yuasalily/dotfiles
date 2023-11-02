#!/bin/bash

echo "start install.sh"

cp -f ~/dotfiles/.bashrc ~
cp -f ~/dotfiles/.zshrc ~

apt install -y zsh

curl -sS https://starship.rs/install.sh -o starship.sh
yes | sh starship.sh
