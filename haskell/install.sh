#!/usr/bin/env sh

echo "Installling Haskell..."
sudo pacman -S haskell-platform

ln -sfT ~/.dotfiles/haskell/ghci ~/.ghci

