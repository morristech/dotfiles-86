git_diff_color() {
  changes=$(git status)
  case $changes in
    *not\ staged*)
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
  esac
}

git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ":$(git_diff_color)${ref#refs/heads/}$(git_pair_info)$(host_prompt_color)"
}

autoload -U colors
colors

setopt prompt_subst

# If we're running in an ssh session, use a different colour
# than if we're on a local machine

host_info() {
  case ${SSH_CLIENT} in
    [0-9]*)
      echo "$(host_prompt_color)%n@%m:"
    ;;;

    *)
      echo "$(host_prompt_color)"
    ;;;
  esac
}

host_prompt_color() {
  case ${SSH_CLIENT} in
    [0-9]*)
      echo "%{$fg[yellow]%}"
    ;;;

    *)
      echo "%{$fg[blue]%}"
    ;;;
  esac
}

git_pair_info() {
  pair=$(git config pair.initials) || return
  case ${pair} in
    [a-z]*)
      echo "‣${pair}"
    ;;;
  esac
}

# export PROMPT=$'$(host_info)%~$(git_prompt_info) ❯ %{$fg[white]%}';

export PROMPT=$'$(host_prompt_color)❯ %{$fg[white]%}';

