#!/bin/bash

# Check if waybar is running
if pgrep waybar >/dev/null; then
    # Kill waybar if it's running
    killall waybar
else
    # Start waybar if it's not running
    # Run in background and redirect output to /dev/null
    waybar >/dev/null 2>&1 &
fi
