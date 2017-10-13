alias gd="./go dev"
alias gsd="./go start dev"
alias gsdo="./go start dev-oahu"
alias gtw="./go test web"
alias gtu="./go test unit"
alias gtww="./go test web watch"

alias gscr="grunt start:client-rest"
alias gsc="grunt start:client"
alias gtcr="grunt test:client-rest"
alias gti="grunt test:integration"

alias json="python -mjson.tool"

alias d="docker"
alias dc="docker-compose"

alias dev="cd ~/dev"
alias boxen="cd /opt/boxen/repo"
alias anal="cd ~/dev/analyze"

alias port='lsof -i $1'
alias docker-clean-containers='docker rm $(docker ps -a -q)'
alias docker-clean-images='docker rmi $(docker images -q)'
alias docker-clean-volumes='docker volume rm $(docker volume ls -q)'
alias fuck-you-docker='docker-clean-containers && docker-clean-images -f && docker-clean-volumes'
alias docker-env='eval "$(docker-machine env default)"'
alias docker-up='docker-machine create default ; eval "$(docker-machine env default)"'
alias docker-stop='docker-machine stop default'
alias docker-start='docker-machine start default ; eval "$(docker-machine env default)"'

alias urldecode='python -c "import urllib, sys; print urllib.unquote(sys.argv[-1])"'
alias t='npm run test:web'
alias tw='npm run test:web:watch'

alias killswp='rm -i `find . | grep .swp$`'
alias killpyc='rm -i `find . | grep .pyc$`'

# To check a process is running in a box with a heavy load: pss
alias psef='ps -ef | grep $1'
alias psaux='ps aux | grep $1'

# from naveed
alias h='history 10'
alias hh='history 20'
alias hhh='history 30'
alias cp='cp -i'
alias mv='mv -i'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'
alias g="git"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias ll="ls -laF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Enable aliases to be sudo’ed
alias sudo='sudo '
#
# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
#
# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Recursively delete `.DS_Store` files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias finderhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias findernohidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# Ring the terminal bell, and put a badge on Terminal.app’s Dock icon
# (useful when executing time-consuming commands)
alias badge="tput bel"

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

# Make Grunt print stack traces by default
command -v grunt > /dev/null && alias grunt="grunt --stack"

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Alias git to hub
# https://conra.dk/2013/01/18/git-on-osx.html
eval "$(hub alias -s)"
