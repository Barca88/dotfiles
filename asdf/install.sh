#!/usr/bin/env sh

echo "Starting asdf:"

git clone https://github.com/asdf-vm/asdf.git ~/.asdf

ln -sfT ~/.dotfiles/asdf/asdfrc        ~/.asdfrc
ln -sfT ~/.dotfiles/asdf/tool-versions ~/.tool-versions

echo "Done with asdf"
