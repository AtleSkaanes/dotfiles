#!/usr/bin/sh

if [ -z "$1" ]; then
    echo "No argument supplied"
    exit 1
fi

export HYPR_WALLPAPER="$HOME/.config/hypr/files/default/wallpaper.png"

cp "$1" "$HYPR_WALLPAPER"

# hyprctl hyprpaper preload "$1"
# hyprctl hyprpaper wallpaper ",$1"
swww img "$HYPR_WALLPAPER" --transition-type center
