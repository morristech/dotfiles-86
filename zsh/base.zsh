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
source ~/.houseshare/zsh/misc.zsh

# Load vendor specific scripts

source ~/.houseshare/zsh/vendor/$UNIX_VARIANT.zsh
