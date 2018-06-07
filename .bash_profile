# Use vim
export EDITOR=vim
set -o vi

# Enable i-search
stty -ixon

# No duplicate lines or lines starting with space in history
export HISTCONTROL="ignoreboth"
# Ignore these commands in history
export HISTIGNORE="ls:cd:pwd:clear:cdd:b"
export HISTSIZE=1000
export HISTFILESIZE=2000
# Append to history, not overwrite
shopt -s histappend

# Update window size after each command
shopt -s checkwinsize

# Color support for aliases
if [ -x /usr/bin/dircolors ]; then
    # If dircolors defined, run it
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Get return code if nonzero
function nonzero_return() {
	RETVAL=$?
    if [ $RETVAL -ne 0 ]; then
	  echo "$RETVAL "
    fi
}

# Terminal prompt setup
# Wrap colors around \[ \] for proper terminal wrapping
PS1="\[\e[90m\]\u\[\e[32m\]@\h\[\e[0m\] \[\e[90m\]\w \[\e[91m\]\`nonzero_return\`\[\e[0m\]$ "
export PS1=$PS1
