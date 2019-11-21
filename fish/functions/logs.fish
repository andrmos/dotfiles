# Defined in - @ line 1
function logs --description 'alias logs kubectl logs pods/<pod> -f'
	kubectl logs pods/$argv -f;
end
