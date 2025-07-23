#!/bin/bash

MAX=$(brightnessctl m)
CUR=$(brightnessctl g)
PER=$(bc <<< "scale=2 ; $CUR / $MAX")

if [ $CUR = $MAX ]; then
	echo MON 100%
elif [ $CUR -le 15 ]; then
	echo MON 01%
else
	echo MON "${PER:1}%"
fi
