# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Add git branch name function
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Prompt String 1
PS1='\e[01;36m\]\w\e[00;90m\]$(parse_git_branch) \e[01m\e[38;5;166m> \e[00;37m\]'

# NNN vars:
export NNN_COLORS="6"
#export NNN_BMS="D:/Documents;d:~/Downloads"
 
export XDG_RUNTIME_DIR=/home/ibrahim/.config/
export RUNLEVEL=3


