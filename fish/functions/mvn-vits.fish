# Defined in - @ line 1
function mvn-vits --description 'alias mvn-vits curl https://api.jokes.one/jod && mvnn clean install'
	curl https://api.jokes.one/jod && mvnn clean install $argv;
end
