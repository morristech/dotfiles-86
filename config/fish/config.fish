set PATH /usr/local/sbin /usr/local/bin $PATH

alias ssh='/usr/bin/ssh -A'
alias scp='/usr/bin/scp'
alias sftp='/usr/bin/sftp'

alias ls='ls -ahGl'

set dotfilePath $HOME/.dotfiles
dotfiles-link $HOME/.dotfiles/config/inputrc $HOME/.inputrc

if set -q dotfilesInstall
  echo "🍺 Installing Brewfile bundle"

  if not test (which brew)
    /usr/bin/ruby (curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install|psub)
    brew tap Homebrew/bundle
  end

  env DOTFILES_SKIP_APPS=1 brew bundle --file=$HOME/.dotfiles/Brewfile --noupdate
end

for tool in $HOME/.dotfiles/tools/*.fish
  source $tool
end
