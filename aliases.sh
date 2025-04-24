alias a='head -n'
alias c='cat'
alias v='vim'
alias g='git --no-pager'
alias gr='grep -i --color'
alias grr='gr -r'
alias f='pushd'
alias b='pushd +1'
alias d='dirs -v'
alias h='history 1'
alias l='ls'
alias s='sudo '
alias t='tail -n'
alias y='yum'
alias m='mv'
alias r='rm'
alias p='cp'
alias lo='locate'
alias cl='column'
alias P='. ~/.profile'
alias X='. ~/.xprofile'

alias e='echo'

alias md='mkdir '
alias ls='ls -a'
alias wi='wicd-cli'

alias up='for i in $(seq 3); do sudo apt update; sudo apt upgrade; done'

alias sch='apt search'
alias itl='sudo apt install'

alias cb='xsel --clipboard --input'

mod_dir=$HOME/.zplug/repos/sorin-ionescu/prezto/modules/archive/functions
alias lsarchive="zsh $mod_dir/lsarchive"
alias unarchive="zsh $mod_dir/unarchive"

