#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Enable Numlock
numlockx & 

# Set Key Repeat rate to 280 ms delay and 40 per second
xset r rate 280 40 # default is 650 25

# Start scripts
/home/jacob/.screenlayout/main.sh
/home/jacob/.config/polybar/launch.sh
nm-applet &

# Wallpaper
feh --bg-scale /home/jacob/Pictures/wallpaper/wallpaper.jpg


exec spectrwm

# kill tray
killall background

