# anyframe
#
fpath=($HOME/.zplug/repos/mollifier/anyframe(N-/) $fpath)
autoload -Uz anyframe-init
anyframe-init

bindkey '^F' anyframe-widget-put-history


if [[ -n $(echo ${^fpath}/chpwd_recent_dirs(N)) && -n $(echo ${^fpath}/cdr(N)) ]]; then

	autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
	add-zsh-hook chpwd chpwd_recent_dirs
	zstyle ':completion:*' recent-dirs-insert both
	zstyle ':chpwd:*' recent-dirs-max 10000
	zstyle ':chpwd:*' recent-dirs-default true

	bindkey '^L' anyframe-widget-cdr

fi
