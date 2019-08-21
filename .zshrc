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

alias .='cd ../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

alias be='bundle exec '
alias bi='bundle install'
alias bo='bundle outdated'
alias br='bundle console'
alias bs='bundle show'
alias bu='bundle update'

alias c.='code .'
alias cl='clear'
alias cp='cp -nv'
alias ct='cat -et'
alias dl='diskutil list'
alias du='du -hd 1'
alias gr='grep -n'
alias la='ls -Fhla'
alias ll='ls -Fhl'
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
alias st='stat -x'
alias tl='tail -n 50 -F'
alias to='touch'
alias tr='tree'
alias w+='chmod u+w'
alias xt='exit'
alias x+='chmod u+x'

alias gad='git add -A && git commit -m '
alias gam='git add -A && git commit --amend --no-edit'
alias gbr='git checkout -b '
alias gcl='git clone --verbose'
alias gcm='git commit --amend -m '
alias gco='git checkout'
alias gfe='git fetch --all && git rebase origin/master'
alias gin='git init && git add -A && git commit -m '
alias glg='git log --oneline --graph --decorate'
alias gor='git remote add origin'
alias gpu='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gst='git status --verbose'
alias gtg='git tag -a -m '

alias appin='brew cask install --appdir="~/Applications" --verbose'
alias appls='brew cask list --versions'
alias appup='brew update --verbose && brew cask upgrade --verbose && brew cleanup --verbose'

alias pkgin='brew install --verbose'
alias pkgls='brew list --versions $(brew leaves)'
alias pkgup='brew update --verbose && brew upgrade --verbose && brew cleanup --verbose'

alias gemin='gem install'
alias gemls='gem list --local --no-details | grep -v "default:"'
alias gemup='gem update && gem update --system'

alias ndpin='npm install --global'
alias ndpls='npm list --global --depth 0'
alias ndpup='npm update --global && npm dedupe --global'

alias ocpin='opam install'
alias ocpls='opam list'
alias ocpup='opam update && opam upgrade'

alias pypin='pip3 install'
alias pypls='pip3 list --not-required'
alias pypup='pip3 list --outdated --format=freeze | cut -d = -f 1 | xargs -n1 pip3 install --upgrade'

alias srvls='brew services list'
alias srvof='brew services stop'
alias srvon='brew services start'
alias srvre='brew services restart'

function mcd {
  mkdir -pv "${1}" && cd "${1}"
}

eval "$(nodenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(opam env)"

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
