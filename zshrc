# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=${PATH}:/usr/local/mysql/bin
export PATH="$PATH:$HOME/flutter/bin"
export PATH="$HOME/miniconda3/bin:$PATH"
# added by Anaconda3 5.2.0 installer
export PATH="/Users/Ky/anaconda3/bin:$PATH"

# Load Git completion
zstyle ':completion:*:*:git:*' script $ZSH/git-completion.bash
fpath=($ZSH $fpath)

autoload -Uz compinit && compinit

# Path to your oh-my-zsh installation.
export ZSH=/Users/Ky/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Ky/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/Ky/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Ky/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/Ky/google-cloud-sdk/completion.zsh.inc'; fi
eval "$(rbenv init -)"

alias chrome="open -a 'Google Chrome'"

# Git Aliases
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
alias gd='git diff'
alias gt='git checkout'
alias gp='git pull'
alias gpo='git pull origin'
alias gpsh='git push'
alias gpsho='git push origin'
alias gm='git merge'
alias gmm='git merge main'
alias gclone='git clone'
alias gsw='git switch'
alias gswc='git switch -c'

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
alias ys="yarn start"
alias yt="yarn test"
alias yd='yarn dev'
alias yb="yarn build"
alias ya="yarn add"
alias yad="yarn add --dev"
alias yga="yarn global add"
alias yl="yarn lint"
alias yf="yarn format"

# server aliases
alias pi='ssh pi@10.0.1.2'
alias omega='ssh kad4446@omega.uta.edu'
alias idir='ssh idir@129.107.35.247'
alias smu='ssh plui@genuse34.lyle.smu.edu; wf54zYu3'

# bash aliases
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"

# zsh aliases
alias zshr="source ~/.zshrc"
alias zsho="code ~/.zshrc"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# fnm
export PATH=/Users/Ky/.fnm:$PATH
eval "`fnm env`"
