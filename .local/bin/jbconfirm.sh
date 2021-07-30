#!/bin/bash

# Confirm using ROFI
# Returns status 0 when yes and 1 when no.
# Optional argument for prompt


# optional first argument
PROMPT=${1:-"Are you sure?"}

CHOICE=`echo -n -e "Yes\nNo" | rofi -dmenu -p "$PROMPT" 2>/dev/null`

if [[ $CHOICE == "Yes" ]]; then
	exit 0	
fi

exit 1
