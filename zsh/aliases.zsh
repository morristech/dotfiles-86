# command aliases

ss () {
  if [[ -a script/console ]] 
  then
    ruby script/server -u $*
  else
    echo "script/server could not found. Maybe this isn't a rails project?"
  fi
}

sc () {
  if [[ -a script/console ]] 
  then
    ruby script/console $*
  else
    echo "script/console could not found. Maybe this isn't a rails project?"
  fi
}

db () {
  if [[ -a script/dbconsole ]] 
  then
    ruby script/dbconsole $*
  else
    echo "script/dbconsole could not found. Maybe this isn't a rails project?"
  fi
}