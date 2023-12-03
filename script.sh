#!/bin/bash

sudo apt install libxcb-xinerama0 libxcb-cursor0

cd ~/Downloads
wget -c https://github.com/ankitects/anki/releases/download/23.10.1/anki-23.10.1-linux-qt6.tar.zst -O anki.tar.zst

sudo apt install zstd
tar xaf anki.tar.zst
cd anki-23.10.1-linux-qt6
sudo ./install.sh



wget https://github.com/Sitolam/neverinstallscript/releases/download/v1.0.0/anki_plugins.7z
7z x anki_plugins.7z
cp -r addons21 ~/.local/share/Anki2/addons21


sudo apt install mplayer
