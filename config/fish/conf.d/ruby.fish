if dotfiles-is-installing
  dotfiles-log "💎 Setting up rbenv"
  set rubyVersion "2.5.1"

  mkdir -p ~/.rbenv
  dotfiles-log "bundler\npuma" > ~/.rbenv/default-gems
  rbenv install $rubyVersion --skip-existing
  rbenv global $rubyVersion
end

dotfiles-link $HOME/.dotfiles/config/irbrc $HOME/.irbrc
dotfiles-link $HOME/.dotfiles/config/railsrc $HOME/.railsrc

set --export BUNDLE_PATH ".bundle/gems"
set --export BUNDLE_BIN  ".bundle/bin"
set --export BUNDLER_EDITOR "code --add"
set --export UNSPRUNG 1

set PATH $HOME/.rbenv/shims $PATH
set PATH ./.bundle/../bin $BUNDLE_BIN $PATH

alias bi='bundle install'
