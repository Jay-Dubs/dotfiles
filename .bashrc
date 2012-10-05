################################################################################
# Exports
################################################################################

export NO_HIPCHAT=1
export GOROOT=~/Dev/slashjoin
export DBROOT=~/Dev/dbmigrate

export PATH=$PATH:/usr/local/bin:/usr/local/sbin:$GOROOT/node_modules/.bin:.

################################################################################
# Helper Functions
################################################################################

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

################################################################################
# Colors
################################################################################
#enables color in the terminal bash shell export
CLICOLOR=1
#sets up the color scheme for list export
LSCOLORS=gxfxcxdxbxegedabagacad
#enables color for iTerm
export TERM=xterm-color

BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
BROWN='\e[0;33m'
BLUE='\e[0;34m'
PURPLE='\e[0;35m'
CYAN='\e[0;36m'
GREY='\e[0;37m'

DARK_GREY='\e[1;30m'
LIGHT_BLUE='\e[1;34m'
LIGHT_GREEN='\e[1;32m'
LIGHT_CYAN='\e[1;36m'
LIGHT_RED='\e[1;31m'
LIGHT_PURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'

CLEAR_COLOR='\e[0m'

################################################################################
# Prompt
################################################################################

PS1="\\[$(tput setaf 7)\\]\[\e[1;35m\]\w\[\e[m\] \[\e[1;33m\]\$(parse_git_branch)\[\e[m\]\[\e[1;37m\]: \\[$(tput sgr0)\\]"

################################################################################
# Aliases
################################################################################

alias vi=vim
alias vows=$GOROOT/node_modules/vows/bin/vows
alias sshsteam='ssh steam@wright-tf2.game-server.cc'

alias cds='cd $GOROOT'
alias cddb='cd $DBROOT'

alias go='echo -e "\033];GoInstant\007"; node $GOROOT/server.dev.js'
alias npmremove='sudo rm -rf $GOROOT/node_modules/'
alias clearswap='echo "Removing vim swap files:"; find . | grep \.[^\.].swp$ | xargs rm -vf';
alias clearorig='echo "Removing opendiff merge orig files:"; find . | grep \.[^\.].orig$ | xargs rm -ivf';

alias ls='ls -G'

# enable color support of ls and also add handy aliases
if which dircolors > /dev/null; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  #alias dir='dir --color=auto'
  #alias vdir='vdir --color=auto' 
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

source ~/.nvm/nvm.sh
source ~/.rvm/scripts/rvm
