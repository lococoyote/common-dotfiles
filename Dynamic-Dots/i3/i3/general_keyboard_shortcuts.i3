# Basic Bindings
bindsym	$mod+Return		    exec $term
bindsym $mod+Shift+e 		exec prompt "Exit i3" "i3-msg exit"
bindsym Mod1+q			    [con_id="__focused__" instance="^(?!dropdown|pythonshell|conky-quickview|rangerdropdown).*$"] kill
bindsym $mod+Shift+r		exec $HOME/.dotfiles/i3/reload.sh
bindsym $mod+d			    exec rofi -show drun -padding 80 -bw 0 -lines 8 -width 100% -location 1 -show-icons 
bindsym $mod+Shift+x		exec i3lock-fancy -n -p
bindsym $mod+m			    move workspace to output left

# layout
bindsym $mod+s			    layout stacking
bindsym $mod+w			    layout tabbed
bindsym	$mod+e			    layout toggle split
bindsym $mod+f			    fullscreen toggle
bindsym $mod+v			    split toggle
bindsym $mod+space 		    focus mode_toggle
bindsym $mod+Shift+space	floating toggle

# change focus
bindsym $mod+h 			    focus left
bindsym $mod+j			    focus down
bindsym $mod+k 			    focus up
bindsym $mod+l		 	    focus right
bindsym $mod+Left 		    focus left
bindsym $mod+Down 		    focus down
bindsym $mod+Up 		    focus up
bindsym $mod+Right 		    focus right

# move focused window
bindsym $mod+Shift+h 		move left
bindsym $mod+Shift+j 		move down
bindsym $mod+Shift+k 		move up
bindsym $mod+Shift+l	 	move right
bindsym $mod+Shift+Left 	move left
bindsym $mod+Shift+Down 	move down
bindsym $mod+Shift+Up 		move up
bindsym $mod+Shift+Right 	move right

# floating move with mouse and $mod
floating_modifier $mod

# Media Controls
bindsym $mod+F2             exec playerctl play-pause
bindsym $mod+F1             exec playerctl previous
bindsym $mod+F3             exec playerctl next
bindsym XF86AudioNext       exec playerctl next
bindsym XF86AudioPrev       exec playerctl previous
bindsym XF86AudioPlay       exec playerctl play-pause
bindsym XF86AudioStop       exec playerctl stop

# Gaps
bindsym $mod+Mod1+plus      gaps inner current plus 5
bindsym $mod+Mod1+minus     gaps inner current minus 5

bindsym $mod+plus           gaps outer current plus 5
bindsym $mod+minus          gaps outer current minus 5

bindsym $mod+shift+plus     gaps inner current set 15; gaps outer current set 15
bindsym $mod+shift+minus    gaps inner current set 0; gaps outer current set 0

# Volume
bindsym $mod+F9                 exec pulsemixer --change-volume -5
bindsym $mod+F10                exec pulsemixer --change-volume +5
bindsym XF86AudioRaiseVolume    exec pulsemixer --change-volume +5
bindsym XF86AudioLowerVolume    exec pulsemixer --change-volume -5
bindsym XF86AudioMute           exec pulsemixer --mute