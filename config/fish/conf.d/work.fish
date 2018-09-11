if type -q work
  status --is-interactive; and source (work init -|psub)
  alias wo='work on'
else
  dotfiles-log "'work' tool not found"
end