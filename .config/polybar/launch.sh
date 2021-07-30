#!/bin/bash

# terminate already running bar instances
killall -q polybar

# wait until the processes have shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar, using default config location ~/.config/polybar/config
polybar example &

