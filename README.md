# foxfiles
My "minimal" dotfiles for i3wm on Arch Linux, using Polybar, Rofi, and Kitty. There is a script, backconf.sh, that will make backups of your current configs. The other script, applyconf.sh, will apply the new configs. I am very selfish and this is only written for me, sorry! (I am not sorry) These are still unfinished, but the idea of having my own git repository is too shiny to ignore? Rofi and Kitty have minimal changes, but I realllly don't want to claw through Kitty's heavily-documented config ever again soooo

As for dependancies, I don't really feel like combing through every file to see what is needed (I am very selfish), but I know you at least need: 
- Envy Code R Nerd Font (or any other nerd font)
- bc
- OpenWeatherMap api key
- jq
- pacman-contrib
- brightnessctl
- ummm you can figure it out?

I use pywal and pywal-polybar, so in order to change most colors, run 'wal -i path/to/wallpaper; wal-polybar'. The included snow.png is the wallpaper you see in the picture. When modifying polybar, only change 'config.template', run 'wal-polybar', and then reload i3!
