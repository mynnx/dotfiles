# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Load the shell dotfiles
for file in ~/.{bash_aliases,bash_functions,bash_prompt}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export SAUCE_USERNAME=earnest-saucelabs
export SAUCE_PASSWORD="bb!M568M20je123A"
export SAUCE_ACCESS_KEY="311d12c7-661e-43e8-9faf-76606ac94b43"

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;
export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups  # don't put duplicate lines in the history. See bash(1) for more options
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

# Fix 'cd' spelling errors and don't blow away history on shell exit
shopt -s cdspell histappend checkwinsize

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    source "$(brew --prefix)/etc/bash_completion";
fi;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion.d/git-prompt.sh" ]; then
    source "$(brew --prefix)/etc/bash_completion.d/git-prompt.sh";
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter Spotify Airmail" killall;

export PATH=node_modules/.bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/mysql/bin:/opt/boxen/rbenv/bin:$PATH
export EDITOR=vim
export CLICOLOR=1
#export LSCOLORS=dxfxcxdxbxegedabagacad
# Highlight section titles in manual pages
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X";

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto";

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
#source /usr/local/bin/virtualenvwrapper.sh

eval $(thefuck --alias)

# Add psql to path
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"

[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

export NVM_DIR="/usr/local/Cellar/nvm/0.31.0"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
