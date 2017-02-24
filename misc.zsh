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

export PATH="${SRC}/util:${PATH}"
export PATH=$HOME/.nodebrew/current/bin:$PATH

function _dabbrev_from_pane() {
    local sources
    sources=($(tmux capture-pane \; show-buffer \; delete-buffer | sed '/^$/d' | sed '$ d'))
    compadd - "${sources[@]%[*/=@|]}"
}
zle -C dabbrev-from-pane menu-complete _dabbrev_from_pane
bindkey '^[/' dabbrev-from-pane
