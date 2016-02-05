if [ `uname -n` = 'x40b' ]
then
    xmodmap /home/daisuke/maps/dvorak_keycode.map
    xmodmap /home/daisuke/maps/switch.map
else
    xmodmap /home/daisuke/maps/dvorak_keycode_central_hhkb.map
    xmodmap /home/daisuke/maps/dvorak_keycode_peripheral_hhkb.map
    xmodmap /home/daisuke/maps/modifier_hhkb.map
fi


