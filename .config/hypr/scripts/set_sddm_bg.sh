#!/usr/bin/bash

# dest="$HOME/.config/sddm/sddmbg.png"
dest='/usr/share/sddm/themes/catppuccin-mocha/backgrounds/wall.png'


img=$1

if [[ $1 == '--random' || $1 == '-r' ]]; then
    wallpaper_dir="$HOME/.config/hypr/files/"
    img=$(find -L "$wallpaper_dir" -type f | shuf -n 1)
fi

sudo magick "$img" -filter Gaussian -blur 0x8 "$dest"
