#!/bin/bash

# Power control script
# Jacob Blomquist - github.com/JacobRBlomquist



CHOICES="Lock\nShutdown\nRestart\nNext Wallpaper\nCancel"

CHOSEN=`/home/jacob/.local/bin/jbchoice.sh "$CHOICES" "Power Options"`

if [[ $CHOSEN == "Lock" ]]; then

	xlock -mode space
fi

if [[ $CHOSEN == "Shutdown" ]]; then
	/home/jacob/.local/bin/jbconfirm.sh "Really Shutdown?" && shutdown now;
fi

if [[ $CHOSEN == "Restart" ]]; then
	/home/jacob/.local/bin/jbconfirm.sh "Really Restart?" &&  reboot;
fi

if [[ $CHOSEN == "Next Wallpaper" ]]; then
	feh --bg-scale --randomize /home/jacob/Pictures/wallpaper/*
fi
