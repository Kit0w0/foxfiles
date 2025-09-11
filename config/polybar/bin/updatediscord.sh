#! /usr/bin/bash
NUM=$(cat ~/.config/polybar/bin/dcounter)
echo "1+$NUM" | bc > ~/.config/polybar/bin/dcounter
polybar-msg action discord hook 0
