MAPDIR=$HOME/maps
DOTDIR=$HOME/linux_dotfiles


if [ -e $HOME/prd ]
then
    export PRD=$HOME/prd
else
    export PRD=$HOME
fi

export SRC=$PRD/src

export PATH="$PATH"":/home/ieremius/anaconda3/bin"

source $DOTDIR/.xprofile
