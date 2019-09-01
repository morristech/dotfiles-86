function github-access-token
	printf "url=https://github.com" | git credential fill | grep password= | string replace "password=" ""
end
