link $dotfilePath/config/irbrc $HOME/.irbrc
link $dotfilePath/config/railsrc $HOME/.railsrc

if test -d $HOME/.rbenv/shims
  set PATH $HOME/.rbenv/shims $PATH
end