#!/bin/bash

echo "start install.sh"

mkdir $HOME/.config
mkdir $HOME/.config/sheldon

cp -f $HOME/dotfiles/.bashrc $HOME
cp -f $HOME/dotfiles/.zshrc $HOME

cp -f $HOME/dotfiles/plugins.toml $HOME/.config/sheldon

apt install -y zsh

curl -sS https://starship.rs/install.sh | sh -s -- --yes
starship preset plain-text-symbols -o ~/.config/starship.toml
curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh | bash -s -- --repo rossmacarthur/sheldon --to ~/.local/bin

source $HOME/.zshrc