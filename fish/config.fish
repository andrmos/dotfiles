# Right
bind \uFB01 forward-char  # Option-l
bind \u00AC forward-char  # Option-l

# Left
bind \u02D9 backward-char # Option-h
bind \u02DB backward-char # Option-h


set -x LANG "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"
set -x LC_CTYPE "en_US.UTF-8"
set -x EDITOR "nvim"

set -gx FZF_DEFAULT_COMMAND "rg --files --hidden --glob '!.git/*'"

set -gx PATH "$HOME/.cargo/bin" $PATH;
set -gx PATH "$HOME/Projects/kotlin-language-server/server/build/install/server/bin" $PATH;

# Git
abbr --add ga 'git add'
abbr --add gad 'git add .'
abbr --add gcam 'git commit -am'
abbr --add gcm 'git commit -m'
abbr --add gd 'git diff'
abbr --add gdc 'git diff --cached'
abbr --add gp 'git push'
# abbr --add gpu 'git push -u origin (git rev-parse --abbrev-ref HEAD)'
abbr --add gpl 'git pull'
abbr --add gs 'git status'
abbr --add gca 'git commit --amend'
abbr --add gco 'git checkout'
abbr --add gcob 'git checkout -b'

# Kubernetes
abbr --add devfss 'kubectl config use-context dev-fss'
abbr --add prodfss 'kubectl config use-context prod-fss'
abbr --add devsbs 'kubectl config use-context dev-sbs'
abbr --add prodsbs 'kubectl config use-context prod-sbs'
abbr --add devgcp 'kubectl config use-context dev-gcp'
abbr --add prodgcp 'kubectl config use-context prod-gcp'
abbr --add pods 'kubectl get pods | egrep \'finn-kandidat|rekrutteringsbistand|tilrettelegging\''
abbr --add kap 'kubectl apply -f'

# NAV
set -gx KUBECONFIG "/Users/andremossige/Projects/kubeconfigs/config"
set -gx VAULT_ADDR "https://vault.adeo.no"

set -gx NVM_DIR "$HOME/.nvm"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andremossige/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/andremossige/Downloads/google-cloud-sdk/path.fish.inc'; end
