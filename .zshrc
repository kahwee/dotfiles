# zsh specific

export VOLTA_HOME="/Users/kahwee/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

fpath=( "$HOME/.zfunctions" $fpath )
autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
  compinit;
else
  compinit -C;
fi;
bindkey -e
bindkey "\e[3~" delete-char

autoload -U promptinit; promptinit
prompt pure

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home

alias ll='ls -al'
alias npm='noglob npm'
alias nano="nano -T 2"
alias st='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
export EDITOR='nano'

# Networking
alias ip="dig o-o.myaddr.l.google.com @ns1.google.com txt +short"
alias stree="/Applications/SourceTree.app/Contents/Resources/stree"
alias npmself="ln -sf /Users/kahwee/.npmrc_self /Users/kahwee/.npmrc"
alias npmuber="ln -sf /usr/local/opt/uber-developer/share/npmrc /Users/kahwee/.npmrc"
alias qd="date \"+%Y-%m-%d (KahWee):\" | pbcopy"

if which brew > /dev/null; then
  PATH=/usr/local/opt/ruby/bin:$PATH
fi;

if which ruby > /dev/null; then
  export GEM_HOME=$HOME/.gem
  export PATH=$GEM_HOME/bin:$PATH
fi;

if which exa > /dev/null; then
  alias ls="exa"
fi;
export PATH=$PATH

# export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
# export JAVA_9_HOME=$(/usr/libexec/java_home -v9)
# export JAVA_HOME=$JAVA_8_HOME

if which fasd > /dev/null; then
  eval "$(fasd --init auto)"
fi;

export GPG_TTY=$(tty)

export HOMEBREW_NO_ANALYTICS=1

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


source "${HOME}/dotfiles/git-aliases.zsh"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export GOPATH="$HOME/gocode"
export PATH="$PATH:$GOPATH/bin"
export PATH="$(yarn global bin):$PATH"

export PATH="$VOLTA_HOME/bin:$PATH"

