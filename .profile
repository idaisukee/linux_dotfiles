MAPDIR=$HOME/maps
DOTDIR=$HOME/linux_dotfiles


if [ -e $HOME/prd ]
then
    export PRD=$HOME/prd
else
    export PRD=$HOME
fi

export SRC=$PRD/src
export PATH=$HOME/.nodebrew/current/bin:$PATH

source $DOTDIR/rbenv.sh

export PATH=$HOME/.phpenv/bin:$PATH
eval "$(phpenv init -)"

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

source $DOTDIR/.xprofile
