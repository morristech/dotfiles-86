function man
	set manFile "$TMPDIR/$argv[1].ps"
	command man -t $argv[1] > $manFile
	open -a Preview $manFile
end
