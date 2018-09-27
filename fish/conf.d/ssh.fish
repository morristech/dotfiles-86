dotfiles-link $HOME/.dotfiles/ssh/authorized_keys $HOME/.ssh/authorized_keys

if dotfiles-is-installing
  set --local hostName (string replace ".local" "" (hostname))
  set --local keyName "tom@$hostName.ed25519"

  if not test -e ~/.ssh/$keyName
    ssh-keygen -t ed25519 -a 100 -f ~/.ssh/$keyName -N '' -C tom@$hostName
  end

  if not grep (cat ~/.ssh/$keyName.pub) ~/.ssh/authorized_keys
    cat ~/.ssh/$keyName.pub >> ~/.ssh/authorized_keys
  end

  if not ssh-add -L | grep (cat ~/.ssh/$keyName.pub)
    ssh-add ~/.ssh/$keyName
  end
end

abbr --add ssh '/usr/bin/ssh -A'
