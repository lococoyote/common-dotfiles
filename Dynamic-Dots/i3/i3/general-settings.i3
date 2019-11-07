# Font
font pango:'Fura Code Regular Nerd Font Complete Mono' 10

# Gaps
gaps inner 15
gaps outer 15

# General variables
set $term 	st
set $mod	Mod4
set $shutdown 	sudo -A shutdown -h now
set $reboot 	sudo -A reboot

#                       border              background         text                 indicator
client.focused          $darkblack          $darkblack         $white	            $darkred
client.unfocused        $darkblack          $darkblack         $darkwhite           $darkred
client.focused_inactive $darkblack 	        $darkblack	       $darkwhite	        $darkred
client.urgent           $darkred            $darkred 	       $white	            $darkred

for_window [class=".*"] border pixel 0
hide_edge_borders both

