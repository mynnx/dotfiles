# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    #alias ls='ls --color'
	alias ll='ls -al'
fi

alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim'
# other
alias datefull='date +%Y%m%d_%H%M%S'

# to be able to use aliases under sudo
alias sudo='A=`alias` sudo  '

# To check a process is running in a box with a heavy load: pss
alias psef='ps -ef | grep $1'
alias psaux='ps aux | grep $1'

# useful alias to browse your filesystem for heavy usage quickly
alias ducks='find . -maxdepth 1 -mindepth 1 -print0  | xargs -0 -n1 du -ks | sort -rn | head -16 | cut -f2 | xargs -i du -hs {}'

# from naveed
alias h='history 10'
alias hh='history 20'
alias hhh='history 30'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --exclude="*svn-base" --color -I'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'

# work stuff
alias vag='vagrant'
alias reach='cd ~/Development/rackspace/reach'
alias cdck='cd ~/Work/dev'
alias show-screen='screen -r cloudkick -p'
alias tags='cd ~/Work/dev/reach; pycscope.py -R -i ../misc/cscope_dirs.txt; ctags -R --languages=python'
