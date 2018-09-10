for configFile in aliases paths work
  source "$HOME/.dotfiles/fish/$configFile.fish"
end

for toolFile in bundler
  source "$HOME/.dotfiles/tools/$toolFile.fish"
end
