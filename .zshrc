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

# Tremor Video work
alias mvncleaninstall="mvn clean install -P\!ui-tools,\!ui-build -DskipTests -e -f pom-local.xml"
alias mvncleaninstall2="mvn clean install -P\!ui-tools,\!ui-build -DskipTests -e"
alias mvninstall="mvn install -DskipTests -P\!ui-tools,\!ui-build -e -f pom-local.xml"
alias mvninstall2="mvn install -DskipTests -P\!ui-tools,\!ui-build -e"
alias mvntc="mvn tomcat7:run -DskipTests -P\!ui-tools,\!ui-build -f pom-local.xml"
alias mvntc2="mvn tomcat7:run -DskipTests -P\!ui-tools,\!ui-build"
alias tcstart="./bin/startup.sh"
alias tcclean="rm -f ./logs/*.* | rm -Rf ./webapps/vha | rm -Rf ./webapps/vhn | rm -Rf ./webapps/vhs | rm -Rf ./temp/*.* | rm -Rf ./work/Catalina | rm -Rf ./temp/infinispan"
alias tcstop="tcclean | ./bin/shutdown.sh"
alias tclog="tail -f ./logs/catalina.out"
alias gitall="cd /Users/kahwee/projects/tsar/; git pull; cd /Users/kahwee/projects/gulp-tasks; git pull; cd /Users/kahwee/projects/gulp-tasks-component; git pull; cd /Users/kahwee/projects/ui-server; git pull;"


alias qd="date \"+%Y-%m-%d (KahWee):\" | pbcopy"
alias qd2="date '+Occurred on %Y-%m-%d %I:%M %p %z' | pbcopy"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Java and friends
export JAVA_OPTS="-Djava.awt.headless=true -Dfile.encoding=UTF-8 -server -Xms1536m -Xmx1536m -XX:NewSize=256m -XX:MaxNewSize=256m -XX:PermSize=256m -XX:MaxPermSize=768m -XX:+DisableExplicitGC -Djava.io.tmpdir=/tmp"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m"
export CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote.port=7004"
export RBENV_ROOT=/usr/local/var/rbenv


#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# . <(npm completion)
# eval "$(gulp --completion=zsh)"

# Customize to your needs...
#PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"
PATH=/usr/local/share:$PATH
PATH=/usr/local/share/npm/bin:$PATH
PATH=/usr/local/bin:$PATH:/bin:/usr/sbin:/sbin:/usr/bin:/usr/local/sbin
PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
PATH=$(brew --prefix ruby)/bin:$PATH
export PATH=$(npm config get prefix)/bin:$PATH
export NODE_PATH=/usr/local/lib/node_modules
#eval $(boot2docker shellinit)
eval "$(fasd --init auto)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# added by travis gem
[ -f /Users/kahwee/.travis/travis.sh ] && source /Users/kahwee/.travis/travis.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# The next line updates PATH for the Google Cloud SDK.
source '/Users/kahwee/Downloads/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/kahwee/Downloads/google-cloud-sdk/completion.zsh.inc'
