MAPDIR=/home/daisuke/maps

if [ `uname -n` = 'x40b' ]
then
    xmodmap $MAPDIR/dvorak_keycode.map
    xmodmap $MAPDIR/switch.map
else
    xmodmap $MAPDIR/dvorak_keycode_central_hhkb.map
    xmodmap $MAPDIR/dvorak_keycode_peripheral_hhkb.map
    xmodmap $MAPDIR/modifier_hhkb.map
fi


