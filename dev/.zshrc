################################################################################
# Path
################################################################################

export PATH=/usr/local/opt/coreutils/libexec/gnubin:/opt/homebrew/bin:$PATH
export PATH=$PATH:$HOME/local/bin:/usr/local/bin:/usr/local/sbin:.

################################################################################
# Helper Functions
################################################################################

parse_git_branch() {
  git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

################################################################################
# Colors
################################################################################

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export TERM=xterm-256color

################################################################################
# Prompt
################################################################################

setopt PROMPT_SUBST
PROMPT='%F{117}%m:%f%F{219}%~%f %F{yellow}$(parse_git_branch)%f%F{white}: %f'

################################################################################
# Aliases
################################################################################

alias vi=vim
alias clearswap='echo "Removing vim swap files:"; find . | grep \.[^\.].swp$ | xargs rm -vf'
alias claude="claude --effort max"

alias ls='ls -G'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

################################################################################
# NVM
################################################################################

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

################################################################################
# Local hooks (secrets, machine-specific config)
################################################################################

if [[ -e "$HOME/.scripts/bash.hooks.rc" ]]; then
  source "$HOME/.scripts/bash.hooks.rc"
fi
