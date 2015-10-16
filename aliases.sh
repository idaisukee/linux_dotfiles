source /home/daisuke/linux_dotfiles/tmp_aliases.sh

alias l='ls -la --color'
alias c='cat'
alias v='vim'
alias g='git'
alias gr='grep -i --color'
alias grr='gr -r'
alias f='pushd'
alias b='popd'
alias h='history 1'
alias s='sudo '
alias y='yum'
alias m='mv'
alias r='rm'
alias p='cp'
alias lo='locate'
# alias pb="rsync -r -e 'ssh -p 3843' ~/doc/weblog/ daisuke@27.120.106.39:/var/www/html/weblog"
alias pb="rsync -r -e 'ssh -p 3843' ~/doc/weblog/ daisuke@27.120.106.39:/home/daisuke/webroot/weblog"
alias gb="rsync -r -e 'ssh -p 3843' daisuke@27.120.106.39:/home/daisuke/webroot/weblog/ ~/doc/weblog"
alias ag='apt-get'
alias e='echo'

alias val='ruby /home/daisuke/src/sleep/validate.rb '
alias val2='ruby /home/daisuke/src/sleep/validate_2.rb '

alias ls='ls -a'
alias wi='wicd-cli'
alias wg='w3m google.com'
# alias wie='wicd-cli -yScpelms-g; ruby $HOME/elms_login.rb'

alias wie0='wicd-cli -yx'
alias wie1='ruby $HOME/connect_elms-g.rb'
alias wie2='ruby $HOME/login_elms-g.rb'
alias wie='wie1; sleep 15; wie2'

alias n0='nmcli c up id 00xx'
alias nh='nmcli c up id HINES-WLAN'

alias nmr='sudo service network-manager restart'
alias scan='wicd-cli -ySl'
alias wi0='wicd-cli -yScp00xx'
alias up='sudo apt-get update; sudo apt-get upgrade; sudo apt-get update; sudo apt-get upgrade; sudo apt-get update; sudo apt-get upgrade'

alias sch='apt-cache search'
alias schb='apt-cache -t "wheezy-backports" search'
alias itl='sudo apt-get install'
alias itlb='sudo apt-get -t "wheezy-backports" install'

alias pow='upower -d | grep percentage'

alias mta='. /home/daisuke/linux_dotfiles/make_tmp_aliases.sh '

