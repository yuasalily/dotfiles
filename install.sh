#!/bin/bash

echo "start install.sh"

pushd ~
ln -fs ~/dotfiles/.bashrc .
ln -fs ~/dotfiles/.zshrc .
popd

curl -sS https://starship.rs/install.sh
yes | sh install.sh
