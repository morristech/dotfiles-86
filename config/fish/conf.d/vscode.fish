function install_vscode_extension
  code --install-extension $argv[1]
end

if set -q dotfilesInstall
  echo "💻 Setting up VS Code"

  # Can list extensions with code --list-extensions
  install_vscode_extension anseki.vscode-color
  install_vscode_extension bungcip.better-toml
  install_vscode_extension eamodio.gitlens
  install_vscode_extension file-icons.file-icons
  install_vscode_extension ms-vscode.Go
  install_vscode_extension msjsdiag.debugger-for-chrome
  install_vscode_extension rust-lang.rust
  install_vscode_extension sleistner.vscode-fileutils
  install_vscode_extension streetsidesoftware.code-spell-checker
  install_vscode_extension skyapps.fish-vscode
end

set --export EDITOR "code"

dotfiles-link "$HOME/.dotfiles/config/vscode/settings.json"    "$HOME/Library/Application Support/Code/User/settings.json"
dotfiles-link "$HOME/.dotfiles/config/vscode/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
