#!/bin/bash

cd ~/config_stuff
cp ~/.config/nvim/init.vim ~/config_stuff/init.vim
cp /mnt/c/Users/User/AppData/Roaming/alacritty/alacritty.yml ~/config_stuff/alacritty.yml

git add *
git commit -m "Automatically updated configs"
git push
