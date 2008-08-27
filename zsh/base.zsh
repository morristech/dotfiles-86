git_diff_color() {
  changes=$(git status)
  case $changes in
    *Untracked*)
      echo "%{$fg[red]%}"
      return
    ;;;
    
    *updated*)
      echo "%{$fg[red]%}"
      return
    ;;;
    
    *committed*)
      echo "%{$fg[green]%}"
      return
    ;;;
    
    *)
      echo "%{$fg[yellow]%}"
    ;;;
  esac
}

git_prompt_info() {
  ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
  echo "($(git_diff_color)${ref#refs/heads/}$(host_prompt_color))"
}

autoload -U colors
colors

setopt prompt_subst

host_prompt_color() {
  case ${SSH_CLIENT} in 
    [0-9]*)
      echo "$fg[red]"
    ;;;
    
    *)
      echo "$fg[blue]"
    ;;;
  esac
}

export PROMPT=$'$(host_prompt_color)%m%~$(git_prompt_info)$ $fg[white]'

# command aliases

alias ss='ruby script/server -u'
alias sc='ruby script/console'
alias db='ruby script/dbconsole'
alias ls='ls -aGl'
alias p='cd ~/Projects; cd '

autoload -U compinit
compinit

local knownhosts
knownhosts=( ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*} ) 
zstyle ':completion:*:(ssh|scp|sftp):*' hosts $knownhosts

# project aliases

alias kc='cd ~/Projects/kudocities/trunk'
alias jgp='cd ~/Projects/jgp/aspire/trunk'

# history file

setopt histignoredups

bindkey '^H' backward-delete-char
bindkey "^[[3~" delete-char

case "$VENDOR" in
	apple)
		source ~/.houseshare/zsh/vendor/apple.zsh
		;;
esac

setopt autocd