# OS X specific settings

export PATH=~/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH
export SVN_EDITOR='mate -w'
export GIT_EDITOR='mate -w'
export EDITOR='mate -w'
export LESSEDIT='mate -l %lm %f'

# Use OS X version of SSH with agent forwarding
alias ssh='/usr/bin/ssh -A'
alias scp='/usr/bin/scp'
alias sftp='/usr/bin/sftp'

alias ls='ls -aGl'


ulimit -n 4096
