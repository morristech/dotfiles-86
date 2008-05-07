export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PROMPT='%m%~$ '
export SVN_EDITOR='mate -w'
export EDITOR='mate -w'
export LESSEDIT='mate -l %lm %f'

# aliases

alias ss='ruby script/server'
alias sc='ruby script/console'
alias kc='cd ~/Projects/kudocities/trunk'
alias ta='cd ~/Projects/tomafro.net/trunk'

# history file

setopt histignoredups

source $HOME/.rake_completion.zsh