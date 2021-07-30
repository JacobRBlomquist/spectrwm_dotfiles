#!/bin/bash


# Jacob R Blomquist - github.com/JacobRBlomquist

# Choose between several options using ROFI
# Returns the chosen option
# If no argument for choices is given or no choice is selected, returns an exit status of '1'

# First argument is newline separated options
# Second argument is optional prompt


# Check that first argument is present
if [[ $# -lt 1 ]]; then
	>&2 echo "No Arguments Given. Need \n delimited list of options"
	exit 1;
fi

CHOICES=$1
PROMPT=${2:-"Choose"}

CHOICE=`echo -n -e "$CHOICES" | rofi -dmenu -p "$PROMPT" 2>/dev/null`

if [[ $CHOICE == "" ]]; then
	exit 1;
fi

echo "$CHOICE"
