# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install


# The following lines were added by compinstall
zstyle :compinstall filename '/Users/george/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# My custom settings
autoload -U promptinit
promptinit
prompt pure

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export GREP_COLOR='1;35'
export GREP_OPTIONS='--color=auto'

export ANT_ARGS='-logger org.apache.tools.ant.listener.AnsiColorLogger'
export ANT_OPTS="-Dant.logger.defaults=${HOME}/.ant/color.properties"

alias .='cd ../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias bb='cd "${HOME}"/Bitbucket/'
alias c.='code .'
alias cl='clear'
alias cp='cp -nv'
alias ct='cat -et'
alias dc='cd "${HOME}"/Documents/'
alias dh='cd "${HOME}"/DockerHub/'
alias di='cd "${HOME}"/DockerImages/'
alias dk='du -hd 1'
alias dl='diskutil list'
alias ds='cd "${HOME}"/Desktop/'
alias dw='cd "${HOME}"/Downloads/'
alias g:='git'
alias gh='cd "${HOME}"/GitHub/'
alias gr='grep -n'
alias hi='fc -l'
alias i.='idea .'
alias ip='cd "${HOME}"/IdeaProjects/'
alias la='ls -Fhla'
alias ll='ls -Fhl'
alias lm='ls | less'
alias ln='ln -sv'
alias lt='ls -Fhlt'
alias lr='ls -Fhltr'
alias ls='ls -1'
alias md='mkdir -pv'
alias mv='mv -nv'
alias nv='env | sort'
alias o.='open .'
alias pg='less'
alias rm='rm -iv'
alias st='cd "${HOME}"/Sourcetree/'
alias sx='stat -x'
alias tl='tail -n 50 -F'
alias to='touch'
alias tp='top -R -F -s 10 -o rsize'
alias tr='tree'
alias up='uptime'
alias vm='cd "${HOME}"/VirtualMachines/'
alias w+='chmod u+w'
alias xt='exit'
alias x+='chmod u+x'

alias ai='brew cask install --appdir="~/Applications" --verbose'
alias al='brew cask list --versions'
alias au='brew update --verbose && brew cask upgrade --verbose && brew cleanup --verbose'

alias ei='brew install --verbose'
alias el='brew list --versions $(brew leaves)'
alias eu='brew update --verbose && brew upgrade --verbose && brew cleanup --verbose'

alias sl='brew services list'
alias sk='brew services stop'
alias sn='brew services start'
alias sr='brew services restart'

alias ga='git config --get-regexp "^alias\."'

alias gi='gem install'
alias gl='gem list --local --no-details | grep -v "default:"'
alias gu='gem update && gem update --system'

alias mi='npm install --global'
alias ml='npm list --global --depth 0'
alias mu='npm update --global && npm dedupe --global'

alias oi='opam install'
alias ol='opam list'
alias ou='opam update && opam upgrade'

alias pi='pip3 install'
alias pl='pip3 list --not-required'
alias pu='pip3 list --outdated --format=freeze | cut -d = -f 1 | xargs -n1 pip3 install --upgrade'

alias be='bundle exec '
alias bi='bundle install'
alias bo='bundle outdated'
alias br='bundle console'
alias bs='bundle show'
alias bu='bundle update'

function cd {
  if [ ! -z "${1}" ]; then
    builtin cd "${1}" && la
  else
    builtin cd && la
  fi
}

function mc {
  mkdir -pv "${1}" && builtin cd "${1}"
}

function pd {
  builtin pwd 
}

function pp {
  ps "${@}" -u "${USER}" -o pid,%cpu,%mem,start,time,bsdtime,command ;
}

function jv {
  if [ ! -z "${1}" ]; then
    export JAVA_HOME=$(/usr/libexec/java_home --version "${1}")
    echo $(java -version)
  else
    echo $(/usr/libexec/java_home --verbose | grep ":")
    echo $(java -version)
  fi
}

function gw {
  if [ -f gradlew ]; then
    ./gradlew --console=verbose "${@}"
  else
    gradle --console=verbose "${@}"
  fi
}

function mw {
  if [ -f mvnw ]; then
    ./mvnw "${@}"
  else
    mvn "${@}"
  fi
}

eval "$(nodenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(opam env)"

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
