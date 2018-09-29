dotfiles-link "$HOME/.dotfiles/git/gitconfig" "$HOME/.gitconfig"
dotfiles-link "$HOME/.dotfiles/git/gitignore" "$HOME/.gitignore"

set --export GIT_EDITOR "code --wait --new-window"
set --export GITHUB_TOKEN (github-access-token)

abbr --add s 'git status -sb'
abbr --add d 'git diff --word-diff --color-words'
abbr --add c 'git diff --cached --word-diff --color-words'
