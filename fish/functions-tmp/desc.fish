# Defined in - @ line 1
function desc --description 'alias desc kubectl describe pods/<pod>'
	kubectl describe pods/$argv;
end
