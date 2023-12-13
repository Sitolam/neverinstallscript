#!/bin/bash

sudo apt install libxcb-xinerama0 libxcb-cursor0

cd ~/Downloads
wget -c https://github.com/ankitects/anki/releases/download/23.10.1/anki-23.10.1-linux-qt6.tar.zst -O anki.tar.zst

sudo apt install zstd
tar xaf anki.tar.zst
cd anki-23.10.1-linux-qt6
sudo ./install.sh



wget https://github.com/Sitolam/neverinstallscript/releases/download/v1.0.0/anki_plugins.7z
sudo apt install p7zip-full p7zip-rar
7z x anki_plugins.7z
cp -r addons21 ~/.local/share/Anki2/addons21


sudo apt install mplayer


sudo mkdir -p /etc/apt/keyrings
curl -sSf https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | gpg --dearmor | sudo tee /etc/apt/keyrings/spotify.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/spotify.gpg] http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client

# The spotify package is currently broken and installs files owned by uid 1000, fix it
dpkg -L spotify-client | sudo xargs chown --no-dereference root:root
