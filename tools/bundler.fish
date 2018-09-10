set --export BUNDLE_PATH ".bundle/gems"
set --export BUNDLE_BIN  ".bundle/bin"

set --export BUNDLER_EDITOR "code -a"

set PATH .bundle/../bin $BUNDLE_BIN $PATH

alias bi='bundle install'


