# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
BGREEN='\[\033[1;32m\]'
BRED='\[\033[1;31m\]'
RED='\[\033[0;31m\]'
BBLUE='\[\033[1;34m\]'
NORMAL='\[\033[00m\]'
#PS1="${BRED}\@${BGREEN}|${BBLUE}\w${BGREEN}| ${RED}\$ ${NORMAL}"
PS1="${BRED}\h${BGREEN}|${BBLUE}\w${BGREEN}| ${RED}\$ ${NORMAL}"

alias ls='ls -Gp'       # Preferred ‘ls’ implementation
alias cp='cp -iv'       # Preferred 'cp' implementation
alias mv='mv -iv'       # Preferred 'mv' implementation
alias mkdir='mkdir -pv' # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'   # Preferred 'ls' implementation
alias v='nvim'
# alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() {
	builtin cd "$@" || exit
	ls
}                     # Always list directory contents upon 'cd'
alias cd..='cd ../'   # Go back 1 directory level (for fast typers)
alias ..='cd ../'     # Go back 1 directory level
alias ...='cd ../../' # Go back 2 directory levels
alias c='clear'       # c:            Clear terminal display
# alias which='type -all'                     # which:        Find executables
mcd() { mkdir -p "$1" && cd "$1" || exit; } # mcd:          Makes new Dir and jumps inside
