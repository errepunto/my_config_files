#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

###################
# CONSOLE OPTIONS #
###################

# Extended glob
shopt -s extglob

# Check screen size
shopt -s checkwinsize

# Change directory without cd
shopt -s autocd

# Deactivate screen freezing with crtl+s
stty ixany
stty ixoff -ixon



###################
# HISTORY OPTIONS #
###################

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


###############
# ENVIRONMENT #
###############

# Default text editor
export EDITOR=vim
export VISUAL=vim

# X destktop. You can select your favourite (KDE, GNOME, MATE, etc)
export DESKTOP_SESSION=LXDE
export DE="lxde"

# Mail dir
export MAIL='~/Maildir'

# 256 color term
export TERM=xterm-256color

# Web browser
if [ -n "$DISPLAY" ]; then
    export BROWSER=firefox
else
    export BROWSER=links
fi

# Local binary directory, used by PIP
export PATH=$PATH:~/.local/bin

# Run graphical programs from console
export DISPLAY=:0

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

#########
# ALIAS #
#########

# Aliases for ls
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias l='ls -al'

# Useful alias
alias diff='colordiff'
alias grep='grep --color=auto'
alias du1='du --max-depth=1'
alias openports='netstat --all --numeric --programs --inet --inet6'

# Adds security with file operations
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'                    # 'rm -i' prompts for every file
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Screen connects to the last active session
alias screen='screen -Rd'

# tmux connects to default session
alias tmuxdef='tmux -2 attach -t default'
# tmux fast kill of default session
alias tmuxkill='tmux kill-session -t default'

##########
# PROMPT #
##########

PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $([[ $? != 0 ]] && echo "\[\033[01;31m\]:(\[\033[01;34m\] ")\n$\[\033[00m\] '

