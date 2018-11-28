#!/usr/bin/env sh

echo "Moving Fonts..."
sudo mkdir /usr/share/fonts
sudo cp *.ttf /usr/share/fonts

echo "Done with fonts."
echo "-> You need to change them in preferences <-"
