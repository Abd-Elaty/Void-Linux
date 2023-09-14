# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Add git branch name function
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
h
# Prompt String 1
PS1='\[\033[01;36m\]\w\[\033[00;90m\]$(parse_git_branch) \[\033[01;38;5;166m\]> \[\033[00;37m\]'

# NNN vars:
export NNN_COLORS="6"
export NNN_BMS="D:/Documents;d:~/Downloads"

# Pulse runtime
export XDG_RUNTIME_DIR=/home/ibrahim/.config/
export RUNLEVEL=3


