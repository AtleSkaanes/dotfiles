#!/usr/bin/env sh

url="$(rofi -dmenu -theme ~/.config/rofi/input.rasi -p 󰖟  -theme-str 'entry { placeholder:"Search the web";}')" || exit 1

exo-open --launch WebBrowser "$url"
