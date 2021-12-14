# Defined in - @ line 0
function ga --description 'alias ga git add' --wraps 'git add'
	git add $argv;
end
