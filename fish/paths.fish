set PATH /usr/local/sbin /usr/local/bin $PATH

if test -d $HOME/.rbenv/shims
  set PATH $HOME/.rbenv/shims $PATH
end

set --export GIT_EDITOR "code --wait --new-window"
set --export EDITOR "code"