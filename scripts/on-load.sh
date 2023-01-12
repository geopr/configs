#!/usr/bin/sh

# keyboard setup (delay 200, rate (repeating speed) 40)
xset r rate 200 40 

# setup monitors
setup-monitors.sh

# remaps
xmodmap ~/.Xmodmap

# shows devices (bluetooth connected, etc...) battery
show-devices-battery.sh
