#!/usr/bin/env sh

ln -sfT ~/.dotfiles/config/profile ~/.profile

sudo cp ~/.dotfiles/config/50-noto-color-emoji.conf /etc/fonts/conf.d/

sudo cp ~/.dotfiles/config/SourceCodePro/*.ttf /usr/share/fonts/
