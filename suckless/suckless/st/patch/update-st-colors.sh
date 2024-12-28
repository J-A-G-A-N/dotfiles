#!/bin/bash
wal_colors="$HOME/.cache/wal/colors.h"
st_colors="/path/to/st-colors.h"

if [ -f "$wal_colors" ]; then
    cp "$wal_colors" "$st_colors"
    kill -USR1 $(pgrep st)
else
    echo "wal colors file not found"
fi

