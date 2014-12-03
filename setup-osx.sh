# Fast keyboard repeat, and short delay before repeat starts
defaults write NSGlobalDomain InitialKeyRepeat 15
defaults write NSGlobalDomain KeyRepeat 2

# ⌃⌘Z to zoom windows
defaults write NSGlobalDomain NSUserKeyEquivalents -dict-add "Zoom" "@^z"

