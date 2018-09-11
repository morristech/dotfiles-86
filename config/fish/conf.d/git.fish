dotfiles-link "$HOME/.dotfiles/config/gitconfig" "$HOME/.gitconfig"
dotfiles-link "$HOME/.dotfiles/config/gitignore" "$HOME/.gitignore"

set --export GIT_EDITOR "code --wait --new-window"

alias s='git status -sb'
alias d='git diff --word-diff --color-words'
alias c='git diff --cached --word-diff --color-words'