if type -q work
  status --is-interactive; and source (work init -|psub)
  alias wo='work on'
else
  echo "'work' tool not found"
end