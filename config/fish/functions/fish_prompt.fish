function __fish_prompt_duration
  set --local duration (echo "$CMD_DURATION 1000" | awk '{printf "%.2fs", $1 / $2}')
  set --local last (string split " " (echo $history[1]))

  set_color 777
  echo -n "  $last[1] took ~"
  echo $duration
  set_color normal
end

function fish_prompt
  if test $CMD_DURATION -gt 1000
    echo (__fish_prompt_duration)
  end

  set_color c1e3fe

  echo -n '❯ '
  set_color normal
end
