#! /usr/bin/bash
KRN=$(uname -r | grep -o -m 1 -P '.{0,10}-' | head -1)
KRN=${KRN:0:-1}
echo "KRN $KRN %{F#1692d0}%{T3}󰣇%{T-} "
# 
