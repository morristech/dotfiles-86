if dotfiles-is-installing
  dotfiles-log "💎 Setting up rbenv"
  set rubyVersion "2.6.2"

  mkdir -p ~/.rbenv
  echo -e "bundler\npuma" > ~/.rbenv/default-gems
  rbenv install $rubyVersion --skip-existing
  rbenv global $rubyVersion
end

dotfiles-link $HOME/.dotfiles/ruby/irbrc $HOME/.irbrc
dotfiles-link $HOME/.dotfiles/ruby/railsrc $HOME/.railsrc

# set --export BUNDLE_PATH "~/.gems"
set --export BUNDLE_BIN  ".bundle/bin"
set --export BUNDLER_EDITOR "code --add"
# set --export UNSPRUNG 1

set PATH $HOME/.rbenv/shims $PATH
set PATH ./.bundle/../bin $BUNDLE_BIN $PATH

abbr --add bi bundle install
abbr --add rt "spring stop && rails test"
