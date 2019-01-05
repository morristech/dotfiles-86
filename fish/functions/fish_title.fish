function fish_title
  set repo (work_repo)

  if [ "$repo" = "" ]
    if [ "$argv[1]" = "" ]
      pwd
    else
      echo "$argv[1]"
    end
  else
    if [ "$argv[1]" = "" ]
      echo $repo
    else
      echo "$argv[1] ($repo)"
    end
  end
end
