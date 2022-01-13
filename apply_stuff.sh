#!/bin/bash

cd ~/config_stuff
git pull

cp init.vim ~/.config/nvim/init.vim

# Apply tmux stuff
cp .tmux.conf ~/.tmux.conf

# WSL specific stuff
if [ -d "/mnt/c/Users/User" ]; then
	cp alacritty.yml /mnt/c/Users/User/AppData/Roaming/alacritty/alacritty.yml
fi

if [ -d "/mnt/c/Users/whood" ]; then
	cp alacritty.yml /mnt/c/Users/whood/AppData/Roaming/alacritty/alacritty.yml
fi
