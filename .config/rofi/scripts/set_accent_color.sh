#!/usr/bin/env sh

echo "!!UNDER CONSTRUCTION!!"
exit 1

if [[ $# == 0 ]]; then
    echo "No argument supplied";
    exit 1;
fi

GTK_THEME="catppuccin-mocha-$1-standard+default"
gsettings set org.gnome.desktop.interface gtk-theme "$GTK_THEME"

sed -i -e "s/accent:.*;/accent: @$1;/g" ~/.config/rofi/catppuccin-mocha.rasi
