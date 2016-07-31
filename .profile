MAPDIR=$HOME/maps

if [ `uname -n` = 'x40b' -o $(uname -n) = 'x40c' ]
then
    xmodmap $MAPDIR/central.map
    xmodmap $MAPDIR/x40_peripheral.map
    xmodmap $MAPDIR/x40_modifier.map
    xmodmap $MAPDIR/x40_switch.map
else
    xmodmap $MAPDIR/central.map
    xmodmap $MAPDIR/hhkb_peripheral.map
fi

if [ -e $HOME/prd ]
then
    export PRD=$HOME/prd
else
    export PRD=$HOME
fi

export SRC=$PRD/src

source rbenv.sh
