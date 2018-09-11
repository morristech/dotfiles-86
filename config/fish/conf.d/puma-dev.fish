if dotfiles-is-installing
  if not pgrep -f 'puma-dev' > /dev/null
    dotfiles-log "🐱 Setting up puma-dev"

    sudo puma-dev -setup
    puma-dev -install
  else
    dotfiles-log "🐱 Puma-dev already running"
  end
end