#!/usr/bin/env bash

export HYPR_WALLPAPER="$HOME/.config/global/wallpapers/current/wallpaper.png"

# Get more wallpapers at https://github.com/orxngc/walls-catppuccin-mocha
wallpaper_dir="$HOME/.config/global/wallpapers"

rand_wallpaper=$(find -L "$wallpaper_dir" -type f | shuf -n 1)

magick "$rand_wallpaper" "$HYPR_WALLPAPER"

if [[ "$1" == '--no-set' ]]; then
    echo "Not changing wallpaper, because --no-set flag"
else
    echo "Changing wallpaper to: $HYPR_WALLPAPER"
    swww img "$HYPR_WALLPAPER" --transition-type center
    # hyprctl hyprpaper preload "$rand_wallpaper"
    # hyprctl hyprpaper wallpaper ",$rand_wallpaper"
fi

