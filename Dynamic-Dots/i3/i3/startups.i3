# All programs which should start at the beginning should be put here

exec_always --no-startup-id feh --bg-scale $HOME/.dotfiles/wallpapers/current.png

exec --no-startup-id compton

exec --no-startup-id dunst --mon 1

exec_always --no-startup-id $HOME/.dotfiles/polybar/launch.sh

exec --no-startup-id unclutter

exec xrandr --output HDMI-1 --auto --output HDMI-3 --auto --left-of HDMI-1
exec setxkbmap -layout de &

