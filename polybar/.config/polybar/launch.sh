#!/usr/bin/env sh

# Terminate already running bars
killall -q polybar

# Wait until processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bars
MONITOR=DVI-I-0 polybar top &
MONITOR=HDMI-0 polybar top &
MONITOR=DP-0 polybar top & 

sleep 1

# xdo above -t $(xdo id -n root) $(xdo id -n polybar)

echo "Polybars launched..."
