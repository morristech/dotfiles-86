if dotfiles-is-installing
  set pythonVersion "3.7.3"

  mkdir -p ~/.pyenv
  pyenv install $pythonVersion --skip-existing
  pyenv global $pythonVersion
end

set PATH $HOME/.pyenv/shims $PATH
