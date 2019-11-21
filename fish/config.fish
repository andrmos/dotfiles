set -x LANG "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"
set -x LC_CTYPE "en_US.UTF-8"
set -x EDITOR "nvim"

# Git
abbr --add ga 'git add'
abbr --add gad 'git add .'
abbr --add gcam 'git commit -am'
abbr --add gcm 'git commit -m'
abbr --add gd 'git diff'
abbr --add gdc 'git diff --cached'
abbr --add gp 'git push'
abbr --add gpu 'git push -u origin (git rev-parse --abbrev-ref HEAD)'
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
abbr --add kpods 'kubectl get pods -l team=teamtag'
abbr --add pods 'kubectl get pods -l team=teamtag | egrep \'finn-kandidat\''
abbr --add kap 'kubectl apply -f'
abbr --add curcon 'kubectl config current-context'

# NAV
set -gx KUBECONFIG "/Users/andremossige/Projects/kubeconfigs/config"
