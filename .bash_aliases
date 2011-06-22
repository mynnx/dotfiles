# be able to use aliases under sudo
alias sudo='A=`alias` sudo  '

# check a process is running 
alias psef='ps -ef | grep'
alias psaux='ps aux | grep'
alias pgrep='pgrep -f'

# browse your filesystem for heavy usage quickly
alias ducks='find . -maxdepth 1 -mindepth 1 -print0  | xargs -0 -n1 du -ks | sort -rn | head -16 | cut -f2 | xargs -i du -hs {}'

# handy
alias ll='ls -al'
alias h='history 10'
alias hh='history 20'
alias hhh='history 30'
alias datefull='date +%Y%m%d_%H%M%S'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --exclude="*svn-base" --color -I'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
