#!/usr/bin/sh

# Get more wallpapers at https://github.com/orxngc/walls-catppuccin-mocha
wallpaper_dir="$HOME/.config/hypr/files/"

rand_wallpaper=$(find -L "$wallpaper_dir" -type f | shuf -n 1)

hyprctl hyprpaper preload "$rand_wallpaper"
hyprctl hyprpaper wallpaper ",$rand_wallpaper"
