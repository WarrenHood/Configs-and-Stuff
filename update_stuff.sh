#!/bin/bash


cd ~/config_stuff
cp ~/.config/nvim/init.vim ~/config_stuff/init.vim

# Update tmux conf
cp ~/.tmux.conf ~/config_stuff/.tmux.conf

# Some WSL specific stuff
if [ -d "/mnt/c/Users/User" ]; then
	cp /mnt/c/Users/User/AppData/Roaming/alacritty/alacritty.yml ~/config_stuff/alacritty.yml
fi

if [ -d "/mnt/c/Users/whood" ]; then
	cp /mnt/c/Users/whood/AppData/Roaming/alacritty/alacritty.yml ~/config_stuff/alacritty.yml
fi

git add *
git add .tmux.conf
git commit -m "Automatically updated configs"
git push
