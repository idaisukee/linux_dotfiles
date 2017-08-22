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

# cf. http://qiita.com/luckypool/items/f1e756e9d3e9786ad9ea

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
for D in `ls $HOME/.anyenv/envs`
do
  export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
done

source $DOTDIR/.xprofile
