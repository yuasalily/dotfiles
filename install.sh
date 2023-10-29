#!/bin/bash

echo "start install.sh"

pushd ~
ln -fs ~/dotfiles/.bashrc .
popd

mkdir -p "$HOME/.config"
mkdir -p "$HOME/test"
