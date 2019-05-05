#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar
killall -q compton

compton --config ~/.compton/.compton.conf -fc &

# Apply wallpaper
bash ~/.fehbg &

# Launch bar
#polybar -r primary &
#sleep 1
#ffpolybar -r secondary &
polybar --config="$HOME/.dotfiles/settings/.config/polybar/config-dark" -r main