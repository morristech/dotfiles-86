alias ssh='/usr/bin/ssh -A'
alias scp='/usr/bin/scp'
alias sftp='/usr/bin/sftp'

alias ls='ls -ahGl'

set PATH /usr/local/sbin /usr/local/bin $PATH

set --export EDITOR "code"

for toolFile in bundler flashlight git rbenv work
  source "$HOME/.dotfiles/tools/$toolFile.fish"
end
