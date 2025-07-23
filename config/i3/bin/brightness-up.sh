#!/usr/bin/bash

brightnessctl s +50
polybar-msg $PPD action brightness hook 0
