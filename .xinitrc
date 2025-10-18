#!/bin/sh

prefix="/usr"
exec_prefix="${prefix}"
xrdb="xrdb"
xinitdir="/etc/X11/xinit"
xclock="xclock"
xterm="xterm"
xmodmap="xmodmap"

userresources="$HOME/.Xresources"
usermodmap="$HOME/.Xmodmap"
sysresources="$xinitdir/.Xresources"
sysmodmap="$xinitdir/.Xmodmap"

# merge in defaults and keymaps

if [ -f "$sysresources" ]; then
    if [ -x /usr/bin/cpp ] ; then
        "$xrdb" -merge "$sysresources"
    else
        "$xrdb" -nocpp -merge "$sysresources"
    fi
fi

if [ -f "$sysmodmap" ]; then
    "$xmodmap" "$sysmodmap"
fi

if [ -f "$userresources" ]; then
    if [ -x /usr/bin/cpp ] ; then
        "$xrdb" -merge "$userresources"
    else
        "$xrdb" -nocpp -merge "$userresources"
    fi
fi

if [ -f "$usermodmap" ]; then
    "$xmodmap" "$usermodmap"
fi

# start some nice programs

if [ -d "$xinitdir"/xinitrc.d ] ; then
	for f in "$xinitdir/xinitrc.d"/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi
runst &
xinput set-prop 10 336 0
# cat ~/Photos/Wallpapers/current | xargs nitrogen --set-zoom-fill 
# cat ~/Photos/Wallpapers/current | xargs wal -i
# wal -R
# swapfile hibernate stuff
echo 259:2 > /sys/power/resume
echo 997376 > /sys/power/resume_offset
nitrogen --restore
export QT_QPA_PLATFORMTHEME=qt5ct:qt6ct
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export FONT='Hurmit Nerd Font Mono'
#exec ~/git/dwm/dwm
exec i3
