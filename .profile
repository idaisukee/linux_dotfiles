MAPDIR=$HOME/maps

if [ `uname -n` = 'x40b' -o $(uname -n) = 'ieremius-ThinkPad-X40' ]
then
    xmodmap $MAPDIR/central.map
    xmodmap $MAPDIR/x40_peripheral.map
    xmodmap $MAPDIR/x40_modifier.map
    xmodmap $MAPDIR/x40_switch.map
    export PRD=$HOME
else
    xmodmap $MAPDIR/central.map
    xmodmap $MAPDIR/hhkb_peripheral.map
    export PRD=$HOME/prd
fi

export SRC=$PRD/src

source rbenv.sh

