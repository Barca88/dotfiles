#!/usr/bin/env sh

echo "Starting Neovim:"

sudo pacman -Syu neovim 

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sfT ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim

echo "Done with nvim"
