if set -q dotfilesInstall
  if not pgrep -f 'puma-dev' > /dev/null
    echo "🐱 Setting up puma-dev"

    sudo puma-dev -setup
    puma-dev -install
  else
    echo "🐱 Puma-dev already running"
  end
end