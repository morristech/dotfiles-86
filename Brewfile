def mojave?
  `sw_vers`.match /\s10\.14/
end

tap "puma/puma"
tap "basecamp/private", "git@github.com:basecamp/homebrew-private.git"

cask_args appdir: "/Applications"

brew "37"
brew "flashlight"
brew "work"

brew "git"
brew "hub"
brew "curl"
brew "wget"
brew "ctags"
brew "fish"
brew "readline"
brew "jsonpp"
brew "tree"
brew "get_iplayer"

brew "rbenv"
brew "rbenv-default-gems"
brew "ruby-build"
brew "ant"
cask "java"
brew "leiningen"
brew "go"
brew "typescript"
brew "python"
brew "node"
brew "yarn"
brew "elixir"
brew "elm"
brew "ghc"

brew "puma/puma/puma-dev"
brew "nginx", args: [ "with-passenger" ]

brew "mysql"
brew "postgresql"

cask "google-chrome"
cask "1password"
cask "alfred"
cask "spotify"
cask "visual-studio-code"
cask "encryptme"
cask "docker"
cask "snagit"
cask "dropbox"
cask "viscosity"
cask "dash"
cask "sketch"
cask "whatsapp"
cask "makemkv"
cask "firefox-developer-edition"

# only nightly version of little snitch working on mojave
if mojave?
  cask "homebrew/cask-versions/little-snitch-nightly"
else
  cask "little-snitch"
end

# mas not working on mojave currently
unless mojave?
  mas "Bear", id: 1091189122
  mas "Xcode", id: 497799835
  mas "1Password", id: 1333542190
  mas "1Blocker", id: 1107421413
end

tap "homebrew/cask-fonts"

cask "font-bitter"
cask "font-lato"
cask "font-roboto"
cask "font-roboto-mono"
cask "font-roboto-slab"
cask "font-karla"
cask "font-lora"
cask "font-fira-sans"
cask "font-fira-code"
cask "font-hack"
