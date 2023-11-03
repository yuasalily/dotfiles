#!/bin/bash

echo "start install.sh"

cp -f ~/dotfiles/.bashrc ~
cp -f ~/dotfiles/.zshrc ~

mkdir $HOME/.config

apt install -y zsh

curl -sS https://starship.rs/install.sh | sh -s -- --yes
starship preset plain-text-symbols -o ~/.config/starship.toml

yes | bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

source ~/.zshrc
