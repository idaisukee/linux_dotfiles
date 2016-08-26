source $HOME/linux_dotfiles/tmp_aliases.sh

if [ `uname` = Darwin ]
then
		alias l='ls -laG'
else
		alias l='ls -la --color'
fi
alias a='head -n'
alias c='cat'
alias v='vim'
alias g='git --no-pager'
alias gr='grep -i --color'
alias grr='gr -r'
alias gs='sh /home/daisuke/src/util/google-search.sh '
alias f='pushd'
alias b='pushd +1'
alias d='dirs -v'
alias h='history 1'
alias s='sudo '
alias t='tail -n'
alias y='yum'
alias m='mv'
alias r='rm'
alias p='cp'
alias lo='locate'
alias cl='column'
alias vim='vi'

BLOG_LOCAL=$PRD/doc/weblog/single/
BLOG_SRV=/home/daisuke/doc/webroot/weblog/single/
alias pb="rsync -av -e 'ssh -p 3843' $BLOG_LOCAL daisuke@27.120.106.39:$BLOG_SRV"
alias gb="rsync -av -e 'ssh -p 3843' daisuke@27.120.106.39:$BLOG_SRV $BLOG_LOCAL"
#alias gb="rsync -r -e 'ssh -p 3843' daisuke@27.120.106.39:/home/daisuke/webroot/weblog/ ~/doc/webroot/weblog"
alias ag='apt-get'
alias e='echo'
alias date6='date +%y%m%d'

alias md='mkdir '
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
alias N='nmr'
alias scan='wicd-cli -ySl'
alias wi0='wicd-cli -yScp00xx'
alias up='sudo apt-get update; sudo apt-get upgrade; sudo apt-get update; sudo apt-get upgrade; sudo apt-get update; sudo apt-get upgrade'

alias sch='apt-cache search'
alias schb='apt-cache -t "wheezy-backports" search'
alias itl='sudo apt-get install'
alias itlb='sudo apt-get -t "wheezy-backports" install'


alias mta='. /home/daisuke/linux_dotfiles/make_tmp_aliases.sh '

alias cb='xsel --clipboard --input'



function power(){upower -d | grep percentage | head -1 | awk 'END {print $2}'}
alias pow=power

function newest(){ls -clt | sed -E 's/\s+/ /g' | cut -f 9 -d ' ' | sed -E '/^\.+$/d' | sed -E '/^$/d' | head -n 1}

function current(){
	git branch --contains |
		cut -d ' ' -f 2
}
