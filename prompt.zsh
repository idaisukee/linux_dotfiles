if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]
then
	prompt steeef
else

UN=`uname -n`
if [ $UN = 'dti-vps-srv112' ]
then
PROMPT="${bg[blue]}%d${reset_color}
"
elif [ $UN = 'vagrant' ]
then
PROMPT="${bg[yellow]}%d${reset_color}
"
else
PROMPT="${bg[green]}%d${reset_color}
"
fi

######################
# show current branch
#
# @see
# http://stackoverflow.com/questions/1128496/to-get-a-prompt-which-indicates-git-branch-in-zsh

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
'%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
'%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
vcs_info
if [ -n "$vcs_info_msg_0_" ]; then
echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
fi
}


UN=`uname -n`
COLOR=green
if [ $UN = 'dti-vps-srv112' ]
then
PROMPT1="${bg[blue]}%d${reset_color}"
elif [ $UN = 'vagrant' ]
then
PROMPT1="${bg[yellow]}%d${reset_color}"
else
PROMPT1="${bg[$COLOR]}%d${reset_color}"
fi
PROMPT2=$'$(vcs_info_wrapper)
'

PROMPT=${PROMPT1}${PROMPT2}
fi
