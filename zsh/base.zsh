source ~/.houseshare/zsh/aliases.zsh
source ~/.houseshare/zsh/completion.zsh
source ~/.houseshare/zsh/prompt.zsh
source ~/.houseshare/zsh/misc.zsh

# Load vendor specific scripts

case "$VENDOR" in
	apple)
		source ~/.houseshare/zsh/vendor/apple.zsh
		;;
esac
