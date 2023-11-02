#!/bin/bash

echo "start install.sh"

cp -f ~/dotfiles/.bashrc ~
cp -f ~/dotfiles/.zshrc ~

apt install -y zsh
chsh -s /bin/zsh

curl -sS https://starship.rs/install.sh -o starship.sh
