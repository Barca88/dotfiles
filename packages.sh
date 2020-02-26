#!/bin/bash

export PKG=(
  devtools
  catdoc
  catppt
  curl
  diffpdf
  htop
  img2txt
  neofetch
  okular
  pandoc
  pandoc-citeproc
  pandoc-crossref
  terminology
  tree
  wget
  xls2csv
  yay
)

export AUR=(
)

for pkg in "${PKG[@]}"
do
  echo "Installing ${pkg}..."
  sudo pacman -Syu "$pkg" --needed --noconfirm
done

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

for aur in "${AUR[@]}"
do
  echo "Installing ${aur}..."
  yay -Syu "$aur" --devel --needed --noconfirm
done

