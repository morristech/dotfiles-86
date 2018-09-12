if dotfiles-is-installing
  dotfiles-log "💻 Setting up VS Code"

  # Can list extensions with code --list-extensions
  code --install-extension anseki.vscode-color
  code --install-extension bungcip.better-toml
  code --install-extension eamodio.gitlens
  code --install-extension file-icons.file-icons
  code --install-extension ms-vscode.Go
  code --install-extension msjsdiag.debugger-for-chrome
  code --install-extension rust-lang.rust
  code --install-extension sleistner.vscode-fileutils
  code --install-extension streetsidesoftware.code-spell-checker
  code --install-extension skyapps.fish-vscode
end

set --export EDITOR "code -w"

dotfiles-link "$HOME/.dotfiles/config/vscode/settings.json"    "$HOME/Library/Application Support/Code/User/settings.json"
dotfiles-link "$HOME/.dotfiles/config/vscode/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
