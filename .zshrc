export DOTFILES_DIR=$HOME/prd/src/linux_dotfiles
source $DOTFILES_DIR/aliases.sh
source $DOTFILES_DIR/misc.zsh

eval "$(starship init zsh)"% 
eval "$(dircolors $DOTFILES_DIR/.dircolors)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(zoxide init zsh)"

export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8
export LC_CTYPE=en_GB.UTF-8