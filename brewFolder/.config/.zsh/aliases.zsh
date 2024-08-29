############################
####### Dave's Alias########
############################
##Personal Set of alias "DONT USE THATS MINE"
alias ze="$EDITOR ~/.zshrc"
alias zs="source ~/.zshrc"
alias ve="$EDITOR ~/.vimrc"
alias c='clear'
alias reload="source ~/.zshrc"
# alias update="sudo apt-get update"
# alias upgrade="sudo apt-get upgrade"
# alias install="sudo apt-get install"
alias vzsh="nvim ~/.zshrc"
alias explorer="nautilus"
##port alias
alias h='history|grep'
alias ports='netstat -tulanp'
##broalias, run the before comand as sudo or just use sudo!!
alias bro='echo you got it bro && sudo $(fc - ln - 1)'
alias so='so -e  duckduckgo'
#Docker alias
alias dc="docker compose"
#Bash
alias mv="mv -iv"
alias mkdir="mkdir -vp"
alias rm="rm -v"
alias curl="curlie"
# mac OS shortcuts
alias code="open -a 'Visual Studio Code'"
alias codeit="code {path to}"
# alias osp="code {path to}"
## ALIAS COMMANDS From EZA
# alias ls="eza --icons --group-directories-first"
alias ls="eza --group-directories-first --icons --color always"
alias lsd="eza --icons --group-directories-first -l"
alias ll="eza -al -alh"
alias tree="eza --tree --color always"
alias g="goto"
alias grep='grep --color'
## Cat to bat
alias cat="bat"
## Git
# alias gst ="git status"
##MISC
alias checkbattery="pmset -g batt"
alias ipconfig="ifconfig | grep "inet""
alias bluetoothoff="blueutil -p 0"
alias bluetoothon="blueutil -p 1"
alias bluetoothstatus="blueutil"
alias spotifycli="spt"
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias spotfylyrics="sptlrx"
alias k="kubectl"
alias h="helm"
alias tf="terraform"
alias a="ansible"
alias ap="ansible-playbook"
alias dt="datree"

