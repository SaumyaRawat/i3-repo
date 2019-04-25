#!/usr/bin/env sh

MONITOR=$(xrandr -q | grep " connected" | cut -d ' ' -f1)
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch top and bottom
polybar top &
polybar bottom &

echo "Bars launched..."
