#! /usr/bin/bash
i3-msg [class="discord"] scratchpad show
echo 0 > ~/.config/polybar/bin/dcounter
polybar-msg action discord hook 0
