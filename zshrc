# Allow local customizations in the ~/.shell_local_before file
if [ -f ~/.shell_local_before ]; then
    source ~/.shell_local_before
fi

# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi

alias chrome="open -a 'Google Chrome'"

# Git Aliases
alias glog='git log --pretty=oneline'
alias gi='git ignore'
alias gs='git status'
alias ga='git add'
alias gap='git add -p'
alias gaa='git add .'
alias gcam='git add . && git commit -am'
alias gam='git commit --amend'
alias gc='git commit'
alias gcm='git commit -m'
alias gb='git branch'
alias gbr='gb'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gbmv='git branch -m'
alias gmv='git branch -m'
alias gd='git diff'
alias gt='git checkout'
alias gp='git pull'
alias gpo='git pull origin'
# Got this alias from https://stackoverflow.com/questions/6089294/why-do-i-need-to-do-set-upstream-all-the-time
alias gpush='git push -u origin HEAD'
alias gpull='git pull'
alias gpsh='gpush'
alias gm='git merge'
alias gmm='git merge main'
alias gclone='git clone'
alias gsw='git switch'
alias gswc='git switch -c'
alias gclean='git stash -u && git stash drop'
alias gstash='git stash -u'

# Github
alias ghprc='gh pr create'
alias ghprv='gh pr view --web'
alias ghprs='gh pr status'
alias ghprls='gh pr list'
alias ghprm='gh pr merge'
alias ghils='gh issues list'
alias ghprcl='gh pr close'

# npm aliases
alias ni='npm install'
alias nis='npm install --save'
alias nid='npm install --save-dev'
alias nig='npm install --global'
alias nu='npm uninstall'
alias nug='npm uninstall -g'
alias nus='npm uninstall -S'
alias nud='npm uninstall -D'
alias nt='npm test'
alias nit='npm install && npm test'
alias nk='npm link'
alias nr='npm run'
alias nrd='npm run dev'
alias nrb='npm run build'
alias ns='npm start'
alias nf='npm cache clean && rm -rf node_modules && npm install'
alias nlg='npm list --global --depth=0'

# yarn aliases
alias y="yarn"
alias ys="yarn start"
alias yt="yarn test"
alias yd='yarn dev'
alias yb="yarn build"
alias ya="yarn add"
alias yad="yarn add --dev"
alias yga="yarn global add"
alias yl="yarn lint"
alias yf="yarn format"

# python aliases
alias pip="pip3"

# shell aliases
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"
alias ls="lsd"
alias ll="ls -lah"
alias la="ls -A"
alias l="ls"

# zsh aliases
alias zshr="source ~/.dotfiles/zshrc"
alias zsho="code ~/.dotfiles/zshrc"

# misc commands
alias migra="docker run --network=host djrobstep/migra migra"

# Allow local customizations in the ~/.shell_local_after file
if [ -f ~/.shell_local_after ]; then
    source ~/.shell_local_after
fi

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi

# Allow private customizations (not checked in to version control)
if [ -f ~/.shell_private ]; then
    source ~/.shell_private
fi
