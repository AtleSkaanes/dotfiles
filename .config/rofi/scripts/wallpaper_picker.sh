#!/usr/bin/env bash

wp_path="$HOME/.config/hypr/files/"

files="$(find "$wp_path" -maxdepth 1 -type f)"

choices="$(echo -en "$files" | sed -r -e "s/^(.*)$/\1\\\0icon\\\x1f\/\1/")"

# echo -n "$choices"
# exit 0

selected_wp="$(echo -en "$choices" | rofi -dmenu -icons -p "󰸉  Pick a Wallpaper" -theme ~/.config/rofi/wallpaper.rasi)"

$HOME/.config/hypr/scripts/set_wallpaper.sh "$selected_wp"
