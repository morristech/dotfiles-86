system_name=`uname -a`

source ~/.dotfiles/zsh/aliases.zsh
source ~/.dotfiles/zsh/completion.zsh
source ~/.dotfiles/zsh/prompt.zsh
source ~/.dotfiles/zsh/title.zsh
source ~/.dotfiles/zsh/misc.zsh
source ~/.dotfiles/zsh/history.zsh


# Load vendor specific scripts

case $system_name in
  Darwin*)
    source ~/.dotfiles/zsh/kernel/darwin.zsh
    ;;
  *)
    source ~/.dotfiles/zsh/kernel/linux.zsh
    ;;;
esac
