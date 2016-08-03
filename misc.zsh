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
