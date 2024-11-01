#!/usr/bin/sh

export HYPR_WALLPAPER="$HOME/.config/hypr/files/default/wallpaper.png"

# Get more wallpapers at https://github.com/orxngc/walls-catppuccin-mocha
wallpaper_dir="$HOME/.config/hypr/files/"

rand_wallpaper=$(find -L "$wallpaper_dir" -type f | shuf -n 1)

cp "$rand_wallpaper" "$HYPR_WALLPAPER"

if [[ "$1" == '--no-set' ]]; then
    echo "Not changing wallpaper, because --no-set flag"
else
    echo "Changing wallpaper to: $HYPR_WALLPAPER"
    swww img "$HYPR_WALLPAPER" --transition-type center
    # hyprctl hyprpaper preload "$rand_wallpaper"
    # hyprctl hyprpaper wallpaper ",$rand_wallpaper"
fi

