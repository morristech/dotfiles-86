# OS X specific settings

export PATH=/usr/local/sbin:/usr/local/bin:$PATH
export GIT_EDITOR='code --wait --new-window'
export BUNDLER_EDITOR='code -a'
export EDITOR='code'

# Use OS X version of SSH with agent forwarding
alias ssh='/usr/bin/ssh -A'
alias scp='/usr/bin/scp'
alias sftp='/usr/bin/sftp'
alias vim='mvim -v'
alias wo='work on'

if which hub &> /dev/null
then
  alias git='hub'
fi

alias ls='ls -ahGl'

fpath=(~/.dotfiles/zsh/osx/functions $fpath)
autoload -U ~/.dotfiles/zsh/osx/functions/*(:t)

fpath=(/usr/local/share/zsh/site-functions $fpath)
autoload -U /usr/local/share/zsh/site-functions/*(:t)


localhost() {
  sudo dscl localhost -create /Local/Default/Hosts/$1 IPAddress 127.0.0.1
  echo "Added $1 at address 127.0.0.1"
}

case $OSTYPE in
  darwin10*)
		export ARCHFLAGS="-arch x86_64"
  ;;;
esac

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=~/Work/go
export PATH=$PATH:$GOPATH/bin

ulimit -n 4096

if which work > /dev/null 2>&1; then
  eval "$(work init -)"
fi
