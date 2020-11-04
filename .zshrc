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

path=("/usr/local/opt/make/libexec/gnubin" $path)
path=("$HOME/.local/bin" $path)

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
alias al='alias'
alias c.='code .'
alias cl='clear'
alias cp='cp -nv'
alias ct='cat -et'
alias dk='du -hd 1'
alias dl='diskutil list'
alias g:='git'
alias ga='git config --get-regexp "^alias\."'
alias gr='grep -n'
alias hs='fc -l'
alias i.='idea .'
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
alias p.='charm .'
alias pg='less'
alias rm='rm -iv'
alias sx='stat -x'
alias tl='tail -n 50 -F'
alias to='touch'
alias tp='top -R -F -s 10 -o rsize'
alias tr='tree'
alias up='uptime'
alias w+='chmod u+w'
alias xt='exit'
alias x+='chmod u+x'

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

alias bci='brew install --cask --appdir="~/Applications" --verbose'
alias bcl='brew list --cask --versions'
alias bcu='brew update --verbose && brew upgrade --cask --verbose && brew cleanup --verbose'

alias bri='brew install --verbose'
alias brl='brew list --versions $(brew leaves)'
alias bru='brew update --verbose && brew upgrade --verbose && brew cleanup --verbose'

alias bsl='brew services list'
alias bsk='brew services stop'
alias bsn='brew services start'
alias bsr='brew services restart'

alias ppi='pip3 install'
alias ppl='pip3 list --not-required'
alias ppu='pip3 list --not-required --outdated --format=freeze | cut -d = -f 1 | xargs -n1 pip3 install --upgrade'
alias ppx='python3 -m pip '

alias pxi='pipx install'
alias pxl='pipx list'
alias pxu='pipx upgrade-all'
alias pxx='pipx run '

alias rbi='bundle install'
alias rbl='bundle list'
alias rbu='bundle update'
alias rbx='bundle exec '

function jvh {
  if [ ! -z "${1}" ]; then
    export JAVA_HOME=$(/usr/libexec/java_home --version "${1}")
    echo $(java -version)
  else
    echo $(/usr/libexec/java_home --verbose | grep ":")
    echo $(java -version)
  fi
}

function jgw {
  if [ -f gradlew ]; then
    ./gradlew --console=verbose "${@}"
  else
    gradle --console=verbose "${@}"
  fi
}

function jmw {
  if [ -f mvnw ]; then
    ./mvnw "${@}"
  else
    mvn "${@}"
  fi
}

function pva {
  if [ ! -z "${1}" ]; then
    if [ -f "${1}"/pyenv.cfg ]; then
      source "${1}"/bin/activate
    else
      python3 -m venv "${1}" && source "${1}"/bin/activate
    fi
  fi
}

function pvd {
  if [ ! -z "${VIRTUAL_ENV}" ]; then
    deactivate
  fi
}

eval "$(nodenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(opam env)"

source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
