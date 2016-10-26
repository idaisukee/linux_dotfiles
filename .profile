MAPDIR=$HOME/maps
DOTDIR=$HOME/linux_dotfiles

if [ `uname -n` = 'x40b' -o $(uname -n) = 'x40d' ]
then
    xmodmap $MAPDIR/central.map
    xmodmap $MAPDIR/x40_peripheral.map
    xmodmap $MAPDIR/x40_modifier.map
    xmodmap $MAPDIR/x40_switch.map
else
    xmodmap $MAPDIR/central.map
    xmodmap $MAPDIR/hhkb_peripheral.map
    xmodmap $MAPDIR/hhkb_switch.map
fi

if [ -e $HOME/prd ]
then
    export PRD=$HOME/prd
else
    export PRD=$HOME
fi

export SRC=$PRD/src
export PATH=$HOME/.nodebrew/current/bin:$PATH
source $DOTDIR/rbenv.sh
