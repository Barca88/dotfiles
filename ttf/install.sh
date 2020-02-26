#!/usr/bin/env sh

echo "Moving Fonts..."

mkdir  -p ~/.fonts
cp -f *.ttf ~/.fonts
cp -f *.sh ~/.fonts

mkdir -p ~/.config/fontconfig/conf.d
cp -f ./config/* ~/.config/fontconfig/conf.d
fc-cache -fv ~/fonts

echo "Done with fonts."
echo "-> You need to change them in preferences <-"
