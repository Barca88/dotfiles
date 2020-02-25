#!/bin/bash

export PKG=(
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
  yaourt -Syu "$aur" --needed --noconfirm
done

