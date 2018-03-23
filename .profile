MAPDIR=$HOME/maps
DOTDIR=$HOME/linux_dotfiles


if [ -e $HOME/prd ]
then
    export PRD=$HOME/prd
else
    export PRD=$HOME
fi

export SRC=$PRD/src

# cf. http://qiita.com/luckypool/items/f1e756e9d3e9786ad9ea

export PATH="$HOME/.anyenv/bin:$PATH"
for D in `ls $HOME/.anyenv/envs`
do
  export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
done

export PATH="$PATH"":/home/ieremius/anaconda3/bin"

source $DOTDIR/.xprofile
