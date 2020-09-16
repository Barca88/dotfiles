#!/bin/bash

export PKG=(
  base-devel
  catdoc
  catppt
  curl
  devtools
  diffpdf
  htop
  img2txt
  neofetch
  okular
  pandoc
  pandoc-citeproc
  pandoc-crossref
  screenfetch
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


for aur in "${AUR[@]}"
do
  echo "Installing ${aur}..."
  yay -Syu "$aur" --devel --needed --noconfirm
done

