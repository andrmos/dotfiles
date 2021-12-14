# Defined in - @ line 1
function wiki --wraps='nvim -c "VimwikiMakeDiaryNote"' --wraps='nvim -c "VimwikiMakeDiaryNote" /Users/andremossige/vimwiki' --wraps='cd /Users/andremossige/vimwiki && nvim -c "VimwikiMakeDiaryNote"' --description 'alias wiki cd /Users/andremossige/vimwiki && nvim -c "VimwikiMakeDiaryNote"'
  cd /Users/andremossige/vimwiki && nvim -c "VimwikiMakeDiaryNote" $argv;
end
