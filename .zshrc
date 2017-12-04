#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
alias npm='noglob npm'
alias gulp='noglob gulp'
alias nano="nano -T 2"
alias st='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Networking
alias ip="dig o-o.myaddr.l.google.com @ns1.google.com txt +short"
alias stree="/Applications/SourceTree.app/Contents/Resources/stree"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias ipaddr="/sbin/ifconfig eth0 | grep 'inet ' | cut -d\  -f2 && /sbin/ifconfig en0 | grep 'inet ' | cut -d\  -f2"

alias qd="date \"+%Y-%m-%d (KahWee):\" | pbcopy"
alias qd2="date '+Occurred on %Y-%m-%d %I:%M %p %z' | pbcopy"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if which brew > /dev/null; then
  PATH=/usr/local/opt/ruby/bin:$PATH
  PATH="/usr/local/opt/php72/bin:$PATH"
fi;

if which ruby > /dev/null; then
  export GEM_HOME=$HOME/.gem
  export PATH=$GEM_HOME/bin:$PATH
fi;

if which exa > /dev/null; then
  alias ls="exa"
fi;
export PATH=$PATH

if which fasd > /dev/null; then
  eval "$(fasd --init auto)"
fi;

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

test -e "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc" && source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/kahwee/.nvm/versions/node/v8.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/kahwee/.nvm/versions/node/v8.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/kahwee/.nvm/versions/node/v8.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/kahwee/.nvm/versions/node/v8.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

