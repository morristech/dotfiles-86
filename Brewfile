def mojave?
  `sw_vers`.match /\s10\.14/
end

tap "puma/puma"
tap "basecamp/private", "git@github.com:basecamp/homebrew-private.git"

cask_args appdir: "/Applications", fontdir: "/Library/Fonts/"

brew "fish"
brew "git"
brew "hub"
brew "curl"
brew "wget"
brew "ctags"
brew "readline"
brew "jsonpp"
brew "tree"
brew "httpie"
brew "gcal"
brew "peco"
brew "duti"
brew "ag"
brew "mycli"
brew "htop"
brew "bat"
brew "fd"
brew "tldr"
brew "ncdu"

brew "37"
brew "flashlight"
brew "work"

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

brew "get_iplayer"

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
cask "iterm2"
cask "mumble"
cask "signal"
cask "homebrew/cask-versions/firefox-developer-edition"
cask "day-o"

cask "little-snitch"

# mas not working on mojave currently
unless mojave?
  mas "Bear", id: 1091189122
  mas "Xcode", id: 497799835
  mas "1Password", id: 1333542190
  mas "1Blocker", id: 1107421413
end

tap "homebrew/cask-fonts"

cask "font-abril-fatface"
cask "font-arvo"
cask "font-archivo-black"
cask "font-archivo-narrow"
cask "font-bitter"
cask "font-cardo"
cask "font-cormorant"
cask "font-fira-sans"
cask "font-fira-code"
cask "font-fjalla-one"
cask "font-hack"
cask "font-karla"
cask "font-lato"
cask "font-lora"
cask "font-merriweather"
cask "font-merriweather-sans"
cask "font-montserrat"
cask "font-nunito"
cask "font-open-sans"
cask "font-open-sans-condensed"
cask "font-playfair-display"
cask "font-roboto"
cask "font-roboto-mono"
cask "font-roboto-slab"
cask "font-roboto-condensed"
cask "font-rubik"
cask "font-signika"
cask "font-source-sans-pro"
cask "font-source-serif-pro"
cask "font-spectral"
