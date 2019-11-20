# BEGIN ANSIBLE MANAGED BLOCK
export GPG_TTY=$(tty)
export WORKSPACE_DIR=/Users/wchou/Workspace
export GOPATH=${WORKSPACE_DIR}/go
export PATH=${GOPATH}/bin:${PATH}
# END ANSIBLE MANAGED BLOCK

# GCP cli
export PATH=$PATH:/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin

# Sentry CLI
export SENTRY_AUTH_TOKEN=SOME_SENTRY_TOKEN

# Android stuff
export ANDROID_HOME=/Users/wchou/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export PATH=$PATH:$HOME/Library/Python/2.7/bin
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/wchou/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

#bash history
SHELL_SESSION_HISTORY=0

#scm breeze init
[ -s "/Users/wchou/.scm_breeze/scm_breeze.sh" ] && source "/Users/wchou/.scm_breeze/scm_breeze.sh"

#Add github ssh key
ssh-add -K ~/.ssh/GITHUB_SSH_KEY

# My personal aliases 

# Resign a bunch of commits, usage: resign COMMIT_ID
alias resign="!re() { git rebase --exec 'git commit --amend --no-edit -n -S' -i $1; }; re"
alias remove_pruned_branches="git fetch -p; git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"

#Remove node modules from current project
alias rmnm="rm -r node_modules"

alias ngrok="~/ngrok"
alias start_datastore="gcloud beta emulators datastore start --no-store-on-disk"
alias reset-datastore="curl -X POST http://localhost:8081/reset"
alias datastore-gui="google-cloud-gui"
alias flush-redis="redis-cli flushall"

# Rust 
export PATH="$HOME/.cargo/bin:$PATH"

# NVM
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
# Port Debugging
alias portusers="sudo lsof -iTCP -sTCP:LISTEN -n -P"
