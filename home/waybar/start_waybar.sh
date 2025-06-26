#/bin/bash

# Terminate already running bar instance
killall -q waybar

# Wait until the processes have been shut down
while pgrep -x waybar >/dev/null; do sleep 1; done

waybar -c ~/.config/waybar/config.json -s ~/.config/waybar/style.css
