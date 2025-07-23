#! /usr/bin/bash
RS=$(ps aux | grep polybar | grep -v grep)
if [ -z "$RS" ]
then
	polybar top &
	polybar bottom &
else
	killall polybar
fi
