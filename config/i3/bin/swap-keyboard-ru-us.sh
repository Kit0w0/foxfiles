#! /usr/bin/bash
US="layout:     us"
RU="layout:     ru"
LAYOUT="$(setxkbmap -query | grep 'layout')"
if [ "$LAYOUT" = "$US" ]; then
	setxkbmap ru
elif [ "$LAYOUT" = "$RU" ]; then
	setxkbmap us
fi
