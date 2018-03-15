#
## Executes commands at the start of an interactive session.
##
## Authors:
##   Sorin Ionescu <sorin.ionescu@gmail.com>
##
#
## Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [[ -s "${ZDOTDIR:-$HOME}/.zplug/repos/zsh-users/zaw/zaw.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zplug/repos/zsh-users/zaw/zaw.zsh"
fi

#
#  # Customize to your needs...
#
export DOTFILES_DIR=$HOME/linux_dotfiles
source $DOTFILES_DIR/aliases.sh
source $DOTFILES_DIR/misc.zsh
source $DOTFILES_DIR/shell_key_bind.zsh
source $DOTFILES_DIR/zplug_init.zsh
source $DOTFILES_DIR/anyframe_init.zsh
source $DOTFILES_DIR/prompt.zsh
source $DOTFILES_DIR/shell_key_bind.zsh

eval "$(anyenv init -)"
