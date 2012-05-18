system_name=`uname -a`

fpath=(~/.dotfiles/zsh/functions $fpath)

source ~/.dotfiles/zsh/prompt.zsh
source ~/.dotfiles/zsh/title.zsh
source ~/.dotfiles/zsh/misc.zsh
source ~/.dotfiles/zsh/history.zsh

autoload -U ~/.dotfiles/zsh/functions/*(:t)

setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps

alias fr='freerange'
alias s='git status -sb'
alias d='git diff'
alias c='git diff --cached'

alias bi='bundle install --path .bundle/gems --binstubs .bundle/bin --standalone'
alias bu='bundle update'

cdpath=(~ ~/Projects/clients/gov.uk ~/Projects/apps ~/Projects/personal ~/Projects/plugins ~/Projects/sites ~/Projects/freerange /var/apps)

setopt autopushd # Use pushd for all directory changing

# Load vendor specific scripts

case $system_name in
  Darwin*)
    source ~/.dotfiles/zsh/osx/osx.zsh
    ;;
  *)
    source ~/.dotfiles/zsh/linux/linux.zsh
    ;;;
esac

source ~/.dotfiles/zsh/completion.zsh

if [[ -d $HOME/.rbenv ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  export PATH="$HOME/.rbenv/shims:$PATH"
fi

export PATH="./.bundle/bin:$PATH"
