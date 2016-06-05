MAPDIR=/home/daisuke/maps

if [ `uname -n` = 'x40b' ]
then
    xmodmap $MAPDIR/x40_central.map
    xmodmap $MAPDIR/x40_peripheral.map
    xmodmap $MAPDIR/x40_modifier.map
    xmodmap $MAPDIR/x40_switch.map
    export PRD=$HOME
else
    xmodmap $MAPDIR/hhkb_central.map
    xmodmap $MAPDIR/hhkb_peripheral.map
    export PRD=$HOME/prd
fi

export SRC=$PRD/src


