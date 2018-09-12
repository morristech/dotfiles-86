set __work_sh_commands (command "work" "commands" "--sh")

function __work_convert_bash_combiners
  string replace --all " || " "; or " (string replace --all " && " "; and " $argv[1])
end

function work
  set command $argv[1]
  set -e argv[1]

  if contains "$command" $__work_sh_commands
    eval (__work_convert_bash_combiners (command "work" "sh-$command" $argv))
  else
    command "work" "$command" $argv
  end
end