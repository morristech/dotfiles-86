function fish_title
  if git rev-parse --is-inside-work-tree > /dev/null 2>&1
    set --local origin (git remote get-url origin)
    set --local name (string match -r "(?:git@github\.com:|https://github.com/)([^.]*)(?:\.git)?" $origin)
    echo $name[2]
  else
    pwd
  end
end
