autoload -Uz colors
colors

export EDITOR='vim'
export VISUAL=$EDITOR
export GIT_EDITOR=$EDITOR

export HISTFILE=${HOME}/linux_dotfiles/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt append_history
setopt extended_history
setopt inc_append_history
setopt share_history

zstyle ':completion:*:default' menu select=1


function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}


zle -N peco-select-history
bindkey '^F' peco-select-history