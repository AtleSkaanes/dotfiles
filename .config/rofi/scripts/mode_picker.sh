#!/usr/bin/env bash



apps="  Apps"; window="  Window"; calc="󰃬  Calc";
files="  Files"; web="󰖟  Web"; cmd="  Cmd";
emoji="󰞅  Emoji"; accent="  Accent"; wallpaper="󰸉  Wallpaper"

modes="$apps\n$files\n$emoji\n""$window\n$web\n$accent\n""$calc\n$cmd\n$wallpaper"

chosen="$(echo -e "$modes" | rofi -dmenu -p 󰮫 -i -theme ~/.config/rofi/modes.rasi)"

# Scripts Path
sp="$HOME/.config/rofi/scripts/"

case $chosen in
    $apps)
        rofi -show drun
        ;;
    $window)
        rofi -show window
        ;;
    $calc)
        $sp/calc.sh
        ;;
    $web)
        $sp/browser.sh
        ;;
    $cmd)
        $sp/command.sh
        ;;
    $emoji)
        $sp/emoji.sh
        ;;
    $files)
        rofi -show recursivebrowser -modi recursivebrowser
        ;;
    $accent)
        $sp/accent_picker.sh
        ;;
    $wallpaper)
        $sp/wallpaper_picker.sh
esac
