function github-access-token
	printf "host=github.com\nprotocol=https\n\n" | git credential-osxkeychain get | grep password= | string replace "password=" ""
end
