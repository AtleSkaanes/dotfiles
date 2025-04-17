#!/usr/bin/env bash

icons_path="$HOME/.config/rofi/icons/accents/"

declare -A accents;
accents=( ["flamingo"]="f2cdcd"\
    ["mauve"]="cba6f7"\
    ["red"]="f38ba8"\
    ["peach"]="fab387"\
    ["yellow"]="f9e2af"\
    ["green"]="a6e3a1"\
    ["blue"]="89b4fa"\
    ["lavender"]="b4befe" )

choices="";
for acc in "${!accents[@]}"; do
    if [ -f "$acc" ]; then
        continue;
    else
        color="${accents[$acc]}";
        eval "magick -size 32x32 xc:#$color $icons_path$acc.png"
    fi
    choices="$choices $acc\0icon\x1f/$icons_path$acc.png"$'\n'
done

# ~/.config/rofi/scripts/set_accent_color.sh "$(echo -en "$choices" | rofi -dmenu -show-icons -p  )"
~/.config/rofi/scripts/set_accent_color.sh "$(echo -en "$choices" | rofi -dmenu -show-icons -p   | sed 's/ *$//')"
