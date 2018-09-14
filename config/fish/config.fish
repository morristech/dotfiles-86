
set PATH $PATH /usr/local/sbin

abbr --add ls 'ls -ahGl'

if test -e $HOME/.private/config.fish
  source $HOME/.private/config.fish
end
