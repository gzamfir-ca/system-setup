# My custom settings
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

export JAVA_HOME=$(/usr/libexec/java_home --version 1.8)
export JV11_HOME=$(/usr/libexec/java_home --version 11)

export CATALINA_HOME="/usr/local/opt/tomcat/libexec"
export JBOSS_HOME="/usr/local/opt/wildfly-as/libexec"
export GIT_HOME="/usr/local/opt/git/libexec"
export M2_HOME="/usr/local/opt/maven/libexec"

fpath=("$HOME/.zfunctions" $fpath)
