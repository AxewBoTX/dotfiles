#!/bin/bash

CONFIG_FILES=".config/waybar/config.jsonc .config/waybar/style.css .config/waybar/theme.css"

trap "killall waybar" EXIT

while true; do
    waybar &
    inotifywait -e create,modify $CONFIG_FILES
    killall waybar
done
