#!/bin/bash

# Power control script
# Jacob Blomquist - github.com/JacobRBlomquist



CHOICES="Shutdown\nRestart\nCancel"

CHOSEN=`/home/jacob/.local/bin/jbchoice.sh $CHOICES "Power Options"`

if [[ $CHOSEN == "Shutdown" ]]; then
	/home/jacob/.local/bin/jbconfirm.sh "Really Shutdown?" && shutdown now;
fi

if [[ $CHOSEN == "Restart" ]]; then
	/home/jacob/.local/bin/jbconfirm.sh "Really Restart?" &&  reboot;
fi


