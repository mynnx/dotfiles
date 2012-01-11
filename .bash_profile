# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Fix 'cd' spelling errors and don't blow away history on shell exit
shopt -s cdspell histappend checkwinsize

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/mysql/bin:/var/lib/gems/1.8/bin:$PATH
export HISTCONTROL=ignoredups  # don't put duplicate lines in the history. See bash(1) for more options
export EDITOR=vim
export BROWSER=chromium-browser
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

export PYTHONPATH=.
export DJANGO_SETTINGS_MODULE=settings
export TWISTED_LOG_ALL=1

export PS1='\[\033]0;\w\007\033[32m\]\u@\h \[\033[33m\w\033[0m\]\n$(parse_git_branch)$ '
alias pss="PS1='[\u:\W]\$ '"
alias psl='\[\033]0;\w\007\033[32m\]\u@\h \[\033[33m\w\033[0m\]\n$(parse_git_branch)$ '

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# set the prompt for interactive shells
# http://en.tldp.org/HOWTO/Bash-Prompt-HOWTO/
parse_git_branch() {
    # returns '(git branch name) ' if inside git directory, 
    # otherwise returns ''
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

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

if [ -f ~/.bash_vagrant ]; then
    . ~/.bash_vagrant
fi
