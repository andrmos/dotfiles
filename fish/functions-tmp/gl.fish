# Defined in - @ line 0
function gl --description alias\ gl\ git\ log\ --graph\ --pretty=format:\'\%Cred\%h\%Creset\ -\%C\(yellow\)\%d\%Creset\ \%s\ \%Cgreen\(\%cr\)\ \%C\(bold\ blue\)\<\%an\>\%Creset\'\ --abbrev-commit
	git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit $argv;
end
