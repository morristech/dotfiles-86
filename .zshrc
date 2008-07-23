export PATH=/opt/local/bin:/opt/local/sbin:$PATH

git_prompt_info() {
  ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
  echo "(%{$fg[yellow]%}git:${ref#refs/heads/}%{$fg[blue]%})"
}
autoload -U colors
colors
setopt prompt_subst

export PROMPT=$'%{$fg[blue]%}%m%{\e[0;34m%}%~$(git_prompt_info)$ %{\e[0m%}'
export SVN_EDITOR='mate -w'
export GIT_EDITOR='mate -w'
export EDITOR='mate -w'
export LESSEDIT='mate -l %lm %f'

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

cd ~/Projects