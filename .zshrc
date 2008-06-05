# Set ulimit to something high, to cope with crappy
# jgp functional tests

ulimit -n 1024

export PROMPT=$'%{\e[0;34m%}%m%{\e[0;34m%}%~$ %{\e[0m%}'

# command aliases

alias ss='ruby script/server'
alias sc='ruby script/console'
alias db='ruby script/dbconsole'
alias ls='ls -Gl'

# project aliases

alias kc='cd ~/Projects/kudocities/trunk'
alias jgp='cd ~/Projects/jgp/aspire/trunk'

# history file

setopt histignoredups

# source $HOME/.rake_completion.zsh

bindkey '^H' backward-delete-char
bindkey "^[[3~" delete-char

case "$VENDOR" in
	apple)
		export PATH=/opt/local/bin:/opt/local/sbin:$PATH
		export SVN_EDITOR='mate -w'
		export GIT_EDITOR='mate -w'
		export EDITOR='mate -w'
		export LESSEDIT='mate -l %lm %f'
		;;
esac