function link
  set current (readlink $argv[2])
  if test "$current" != "$argv[1]"
    echo "Linking $argv[2] to $argv[1]"
    mkdir -p (dirname $argv[2])
    ln -Fs "$argv[1]" "$argv[2]"
  end
end

set PATH /usr/local/sbin /usr/local/bin $PATH

alias ssh='/usr/bin/ssh -A'
alias scp='/usr/bin/scp'
alias sftp='/usr/bin/sftp'

alias ls='ls -ahGl'

set dotfilePath $HOME/.dotfiles
link $dotfilePath/config/inputrc $HOME/.inputrc

for tool in $HOME/.dotfiles/tools/*.fish
  source $tool
end
