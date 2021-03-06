#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[ -n "$TMUX" ] && export TERM=xterm-256color

# colored man pages!
man() {
env \
LESS_TERMCAP_mb=$(printf "\e[1;31m") \
LESS_TERMCAP_md=$(printf "\e[1;31m") \
LESS_TERMCAP_me=$(printf "\e[0m") \
LESS_TERMCAP_se=$(printf "\e[0m") \
LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
LESS_TERMCAP_ue=$(printf "\e[0m") \
LESS_TERMCAP_us=$(printf "\e[1;35m") \
man "$@"
}

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# PS1='\u \w > '
PS1='\[\e[m\]\u\[\e[m\] \[\e[34m\]\w\[\e[m\] \[\e[37m\]> \[\e[0m\]'

shopt -s autocd # cd to a dir just by typing its name
PROMPT_COMMAND='[[ ${__new_wd:=$PWD} != $PWD ]] && ls; __new_wd=$PWD' # ls after cding


#=====================
# -All mah aliases-
#=====================

alias d="cd ~/Downloads"
alias cd..='cd ..' # mah silly typos
alias ..='cd ..'
alias ...='cd ../../../'
alias snano='sudo nano'
alias edit='nano'
alias music='mocp -T dante'
alias irc='irssi'
alias bashrc='$EDITOR $HOME/.bashrc'
#alias redshift='gtk-redshift -l 31.3:-94.7 -t 6500:5500'
#alias urxvtc='bash $HOME/.scripts/urxvtc.sh'
#alias extmon='$HOME/.scripts/extmon.sh'
alias ls='ls --color=auto' # pretty colors
alias ll="ls -lh"
alias la="ls -a"
alias lla="ls -la"
alias l.="ls -d .*"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grepr='grep -r --color=auto'
alias grepi='grep -i --color=auto'
#alias pacman='pacman'
#alias pacs='sudo pacman -S'
#alias pacf='pacman -Ss'
#alias pacup='sudo pacman -Syu'
#alias pacr='sudo pacman -Rns'
#alias pak='sudo packer -S'
#alias pakup='sudo packer -Syu'
#alias pakf='packer -Ss'
#alias awrc='$EDITOR $HOME/.config/awesome/rc.lua'
#alias awtheme='$EDITOR $HOME/.config/awesome/themes/default/theme.lua'
#alias tmux='tmux -2uv' # for some reason this makes vim work in tmux
alias x='xmodmap $HOME/.Xmodmap'
alias reboot="sudo shutdown -r now"
#alias poweroff="sudo poweroff"
alias poweroff="sudo shutdown -h now"

#delete
alias del='mv --target-directory=/home/lucifer/.Trash/'

#apt
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias purge='sudo apt-get remove --purge'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias upgrade='sudo apt-get upgrade'
alias clean='sudo apt-get autoclean && sudo apt-get autoremove'
#alias search='apt-cache search'
#alias show='apt-cache show'
alias sources='(gksudo gedit /etc/apt/sources.list &)'

alias dfh='df -h'

#tar
alias tarz='tar -xvzf'
alias tarb='tar -xvjf'

export EDITOR="nano"

# WELCOME SCREEN
################################################## #####

clear

echo -ne "${LIGHTGREEN}" "Hello, $USER. today is, "; date
echo -e "${WHITE}"; cal ;
echo -ne "${CYAN}";
echo -ne "${LIGHTPURPLE}Sysinfo:";uptime ;echo "" 
