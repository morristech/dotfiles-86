system_name=`uname -a`

case $system_name in
  Darwin*)
    export UNIX_VARIANT=darwin
    ;;
  *)
    export UNIX_VARIANT=linux
    ;;;
esac

source ~/.houseshare/zsh/aliases.zsh
source ~/.houseshare/zsh/completion.zsh
source ~/.houseshare/zsh/prompt.zsh
source ~/.houseshare/zsh/title.zsh
source ~/.houseshare/zsh/misc.zsh
source ~/.houseshare/zsh/history.zsh


# Load vendor specific scripts

source ~/.houseshare/zsh/variant/$UNIX_VARIANT.zsh
