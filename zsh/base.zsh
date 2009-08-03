system_name=`uname -a`



source ~/.houseshare/zsh/aliases.zsh
source ~/.houseshare/zsh/completion.zsh
source ~/.houseshare/zsh/prompt.zsh
source ~/.houseshare/zsh/title.zsh
source ~/.houseshare/zsh/misc.zsh
source ~/.houseshare/zsh/history.zsh


# Load vendor specific scripts

case $system_name in
  Darwin*)
    source ~/.houseshare/zsh/kernel/darwin.zsh
    ;;
  *)
    source ~/.houseshare/zsh/kernel/linux.zsh
    ;;;
esac
