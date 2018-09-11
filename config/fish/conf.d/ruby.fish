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

if test -d $HOME/.rbenv/shims
  set PATH $HOME/.rbenv/shims $PATH
end