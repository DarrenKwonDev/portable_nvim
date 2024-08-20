#!/bin/bash

echo "-----------------------------------------"
echo "step 1 : glic >= 2.15 && FUSE support check"
echo "-----------------------------------------"

ldd --version
ls /dev/fuse


echo "-----------------------------------------"
echo "step 2 : install nvim via appimage 0.10.1"
echo "-----------------------------------------"

# app image from  https://github.com/neovim/neovim/releases/
# ver 0.10.1
chmod u+x nvim.appimage

echo "ensure installed"
./nvim.appimage --version

echo "mv appimage into opt"
sudo mkdir -p ~/.local/bin/
sudo cp -f ./nvim.appimage ~/.local/bin/

# add PATH env
if ! grep -q 'export PATH="$PATH:~/.local/bin"' ~/.bashrc; then
    echo 'export PATH="$PATH:~/.local/bin"' >> ~/.bashrc
    echo "PATH added to ~/.bashrc"
else
    echo "PATH already exists in ~/.bashrc"
fi

# resourcing bashrc 
source ~/.bashrc

echo "-----------------------------------------"
echo "step 3 : copy lua config"
echo "-----------------------------------------"

echo "move init.lua into right path"
mkdir -p ~/.config/nvim/
cp -f ./init.lua ~/.config/nvim/






