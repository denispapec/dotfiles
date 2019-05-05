#! /bin/bash
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 96
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
exec NetworkManager &
exec i3
exec ~/.desktopInit.sh
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
