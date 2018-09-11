if set -q dotfilesInstall
  echo "🚢 Installing shipshape"

  set shipshapePath $HOME/37s/ops/shipshape

  if not test -d $shipshapePath
    mkdir -p $shipshapePath
    git clone git@github.com:basecamp/shipshape $shipshapePath
    dotfiles-link $shipshapePath/bin/shipshape /usr/local/bin/shipshape
    shipshape install
  end

  shipshape
end