#!/usr/bin/env sh

.packages.sh

echo "Updating packages...\n"
sudo pacman -Syu --needed --noconfirm

echo "Lets have Fun:\n"
for pkg in "${PKG[@]}"
do
  echo "Installing ${pkg}...\n"
  sudo pacman -Syu "$pkg" --needed --noconfirm
done

for aur in "${AUR[@]}"
do
  echo "Installing ${aur}...\n"
  yaourt -Syu "$aur" --needed --noconfirm
done

SAVED_DIR=$PWD

cd ~/.dotfiles

dirs=$(find . -maxdepth 1 -mindepth 1 -type d -not -name '.git' -print)
for dir in $dirs
do
  echo "Installing ${dir}...\n"
  sh "$dir"/install.sh
done

cd "$SAVED_DIR"

echo "Thats all for today folks!\n"
