# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/mysql/bin:/var/lib/gems/1.8/bin:$PATH
export HISTCONTROL=ignoredups  # don't put duplicate lines in the history. See bash(1) for more options
export EDITOR=vim
export BROWSER=chromium-browser

export PYTHONPATH=.
export DJANGO_SETTINGS_MODULE=settings
export TWISTED_LOG_ALL=1

export PS1='\[\033]0;\w\007\033[32m\]\u@\h \[\033[33m\w\033[0m\]\n$(parse_git_branch)$ '
alias pss="PS1='[\u:\W]\$ '"
alias psl='\[\033]0;\w\007\033[32m\]\u@\h \[\033[33m\w\033[0m\]\n$(parse_git_branch)$ '

# loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Fix 'cd' spelling errors and don't blow away history on shell exit
#TODO try taking away checkwinsize; suspect that's why terminal window 
#   resizes with font size change
shopt -s cdspell histappend checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# enable color support of ls
# TODO this is dumb.  figure out sensible `ls` colors, for reals.
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad   # might just work on mac.
if [ "$TERM" != "dumb" ]; then
    alias ls='ls --color'
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f ~/.git-completion.sh ]; then
	. ~/.git-completion.sh
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# set the prompt for interactive shells
# http://en.tldp.org/HOWTO/Bash-Prompt-HOWTO/
parse_git_branch() {
    # returns '(git branch name) ' if inside git directory, 
    # otherwise returns ''
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
