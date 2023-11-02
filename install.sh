#!/bin/bash

echo "start install.sh"

pushd ~
ln -fs ~/dotfiles/.bashrc .
popd
