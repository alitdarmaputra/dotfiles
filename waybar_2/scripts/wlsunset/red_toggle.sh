#!/bin/bash

source ~/.config/waybar/scripts/wlsunset/red_var.sh

# Check if wlsunset is currently running
if pgrep wlsunset >/dev/null; then
	# kill wlsunset
	pkill wlsunset
	notify-send -t 700 "Blue Light Filter is Off"
else
	wlsunset -t $TEMP &
	notify-send -t 700 "Blue Light Filter is On"
fi
