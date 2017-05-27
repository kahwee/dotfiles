#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
alias npm='noglob npm'
alias gulp='noglob gulp'
alias nano="nano -T 2"
alias z='fasd_cd -d'
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

export RBENV_ROOT=/usr/local/var/rbenv

# . <(npm completion)
# eval "$(gulp --completion=zsh)"

PATH=/usr/local/share:~/bin:$PATH
PATH=/usr/local/bin:$PATH:/bin:/usr/sbin:/sbin:/usr/bin:/usr/local/sbin
if which brew > /dev/null; then
	PATH=$(brew --prefix homebrew/php/php56)/bin:$PATH;
	PATH=$(brew --prefix ruby)/bin:$PATH;
fi;
if which npm > /dev/null; then
	PATH=$(npm config get prefix)/bin:$PATH;
	export NODE_PATH=/usr/local/lib/node_modules
fi;
export PATH=$PATH

eval "$(fasd --init auto)"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# added by travis gem
[ -f /Users/kahwee/.travis/travis.sh ] && source /Users/kahwee/.travis/travis.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# The next line updates PATH for the Google Cloud SDK.
[ -f /Users/kahwee/Downloads/google-cloud-sdk/path.zsh.inc ] && source '/Users/kahwee/Downloads/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
[ -f /Users/kahwee/Downloads/google-cloud-sdk/completion.zsh.inc ] && source '/Users/kahwee/Downloads/google-cloud-sdk/completion.zsh.inc'
