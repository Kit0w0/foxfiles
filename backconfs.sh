#! /usr/bin/bash
#I know that limiting variables to three letters is silly, BUT it makes me feel like i'm writing assembly or something, which makes me feel COOL
STR='configs-backup-'
TIM=$(date +%Y-%m-%d)
TIM="${STR}${TIM}"
mkdir "./$TIM"
echo "Copying configs..."
cp -r ~/.config/polybar "./$TIM"
cp -r ~/.config/i3 "./$TIM"
cp -r ~/.config/kitty "./$TIM"
cp -r ~/.config/rofi "./$TIM"
echo "Archiving and compressing..."
tar -cvzf "./$TIM.tar.gz" "./$TIM"
rm -r "./$TIM"
echo "Finished!"

