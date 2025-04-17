#!/usr/bin/env sh

cmd="$(rofi -dmenu -theme ~/.config/rofi/input.rasi -p   -theme-str 'entry { placeholder:"cmd";}')" || exit 1

if [ ${cmd:0:1} == '!' ]; then
    eval "${cmd:1}"
else
    kitty --hold sh -c "$cmd"
fi

