
set PATH $PATH /usr/local/sbin

abbr --add ls 'ls -ahGl'
abbr --add cal 'gcal --starting-day=1 .'

if test -e $HOME/.private/config.fish
  source $HOME/.private/config.fish
end
