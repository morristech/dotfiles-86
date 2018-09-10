if type -q work
  # function work
  #   set command $argv[1]
  #   set -e argv[1]

  #   switch $command
  #   case cd on
  #     eval (work "sh-$command" $argv | sed "s/ &&/; and/g")
  #   case '*'
  #     command work "$command" $argv
  #   end
  # end

  status --is-interactive; and source (work init -|psub)
end