# My custom settings
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

export JAVA_HOME=$(/usr/libexec/java_home --version 1.8)

export ANT_HOME="/usr/local/opt/ant/libexec"
export CATALINA_HOME="/usr/local/opt/tomcat/libexec"
export GRADLE_HOME="/usr/local/opt/gradle/libexec"
export GROOVY_HOME="/usr/local/opt/groovy/libexec"
export JBOSS_HOME="/usr/local/opt/wildfly-as/libexec"
export M2_HOME="/usr/local/opt/maven/libexec"

export GIT_HOME="/usr/local/opt/git/libexec"

fpath=("$HOME/.zfunctions" $fpath)
