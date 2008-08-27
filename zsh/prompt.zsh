
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