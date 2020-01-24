brew install git neovim fzf tmux htop fish kubectl maven node yarn diff-so-fancy hub

brew cask install firefox iterm2 slack spotify intellij-idea lastpass notion sensiblesidebuttons rectangle karabiner-elements google-chrome docker java abstract

# dotfiles: vim, ideavimrc, tmuxconf, intellij file watchers, fish history, input mono font
# keyboard shortcuts bytte vindu

# Increase keyboard repeat speed
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

# better diff
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
