#!/bin/bash

INTERNAL="eDP-1"
EXTERNAL="HDMI-1-0"

if xrandr | grep "$EXTERNAL connected"; then
	xrandr --output "$INTERNAL" --off --output "$EXTERNAL" --auto
else
	xrandr --output "$INTERNAL" --auto --primary --output "$EXTERNAL" --off
fi
