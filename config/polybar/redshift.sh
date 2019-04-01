#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon=""

pgrep -x redshift &> /dev/null
if [[ $? -eq 0 ]]; then
	temp=$(redshift -p 2>/dev/null | grep Temp | cut -d':' -f2)
	temp_="${temp//K/}"
fi

# OPTIONAL: Append ' ${temp}K' after $icon
if [[ -z $temp_ ]]; then
	echo ""			            # Greyed out (not running)
elif [[ $temp_ -ge 5000 ]]; then
	echo "%{F#8FA1B3}$icon $temp"       # Blue
elif [[ $temp_ -ge 4000 ]]; then
	echo "%{F#EBCB8B}$icon $temp"       # Yellow
else
	echo "%{F#D08770}$icon $temp"       # Orange
fi
