function gsu --wraps='git branch --set-upstream-to=origin/(git branch --show-current) (git branch --show-current)' --description 'alias gsu git branch --set-upstream-to=origin/(git branch --show-current) (git branch --show-current)'
  git branch --set-upstream-to=origin/(git branch --show-current) (git branch --show-current) $argv; 
end
