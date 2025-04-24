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



function power(){upower -d | grep percentage | head -1 | awk 'END {print $2}'}
alias pow=power

function newest(){ls -clt | sed -E 's/\s+/ /g' | cut -f 9 -d ' ' | sed -E '/^\.+$/d' | sed -E '/^$/d' | head -n 1}

function current(){
	git branch --contains |
		cut -d ' ' -f 2
}


function times(){
	int=$1
	command=$2
	for i in $(seq 1 $int)
	do
		eval $command
	done
}

function pr(){
	str=$1
	arg="pr "$str
	out=$(echo $arg | ruby $SRC/rdatetime/convert.rb)
	echo $out
}


function gc(){
	str=$1
	arg="g "$str
	out=$(echo $arg | ruby $SRC/rdatetime/convert.rb -c)
	echo $out
}


function rd(){
	str=$1
	out=$(echo $str | ruby $SRC/rdatetime/rc_ajd_to_gc.rb)
	echo $out
}

function itex(){
	file=$1
	uplatex $file
	dvipdfmx $file
}

mod_dir=$HOME/.zplug/repos/sorin-ionescu/prezto/modules/archive/functions
alias lsarchive="zsh $mod_dir/lsarchive"
alias unarchive="zsh $mod_dir/unarchive"

