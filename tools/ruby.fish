if set -q dotfilesInstall
  echo "💎 Setting up rbenv"
  set rubyVersion "2.5.1"

  mkdir -p ~/.rbenv
  echo "bundler\npuma" > ~/.rbenv/default-gems
  rbenv install $rubyVersion --skip-existing
  rbenv global $rubyVersion
end

link $dotfilePath/config/irbrc $HOME/.irbrc
link $dotfilePath/config/railsrc $HOME/.railsrc

if test -d $HOME/.rbenv/shims
  set PATH $HOME/.rbenv/shims $PATH
end