function sc
  if test -e script/console
    ruby script/console $argv
  else if test -e script/rails
    ruby script/rails console $argv
  else if test -e bin/rails
    bin/rails console $argv
  else
    echo "None of bin/rails, script/rails, or script/console. Maybe this isn't a rails project?"
  end
end
