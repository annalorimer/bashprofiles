# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=2000000

# sanitize TERM:
PS2="> "
PS3="> "
PS4="+ "
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

PS1='\[\e[1;38;5;77m\]\u@\h\[\e[m\] \[\e[1;38;5;77m\]\w\[\e[m\] \[\e[1;38;5;77m\]\$\[\e[m\] \[\e[0;37m\]'
force_color_prompt=yes
LS_COLORS='di=1;38;5;211:fi=0;38;5;119:ex=1;38;5;77:ln=1;38;5;112:pi=0;38;5;119:so=0;38;5;119:cd=0;38;5;119:or=1;38;5;34:mi=1;38;5;34' ; export LS_COLORS
