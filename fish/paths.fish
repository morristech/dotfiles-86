set PATH /usr/local/sbin /usr/local/bin $PATH

if test -d $HOME/.rbenv/shims
  set PATH $HOME/.rbenv/shims $PATH
end

set PATH ./.bundle/../bin ./.bundle/bin $PATH

set --export GIT_EDITOR "code --wait --new-window"
set --export BUNDLER_EDITOR "code -a"
set --export EDITOR "code"