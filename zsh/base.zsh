source ~/.houseshare/zsh/aliases.zsh
source ~/.houseshare/zsh/completion.zsh
source ~/.houseshare/zsh/prompt.zsh

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