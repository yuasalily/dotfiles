#!/bin/bash

echo "start install.sh"

cp -f ~/dotfiles/.bashrc ~
cp -f ~/dotfiles/.zshrc ~

curl -sS https://starship.rs/install.sh -o starship.sh
