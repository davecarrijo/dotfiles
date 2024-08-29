#############################
#    Dave dot-files 2022   ##
#############################
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.



#####################
# ENV VARIABLE      #
#####################
export EDITOR='nvim'
export VISUAL=$EDITOR
export PAGER='less'
export SHELL='/bin/zsh'
export LANG=en_US.UTF-8
# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

##################
#<<< Ho-My-ZSH >>#
##################
# Path to your oh-my-zsh installation && zsh's config's.
export ZSH="$HOME/.oh-my-zsh"
export PATH=/usr/local/bin:$PATH
ZSH_THEME="powerlevel10k/powerlevel10k"  #Theme of the shell

#################
#    PLUGINS    #
#################
# source ~/.config/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $HOME/.config/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(
	git
	autojump
    fzf
	# mercurial
	npm
	ruby
	copyfile
	dirhistory
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

##################
# history setup  #
##################
HISTEFILE=$HOME/.config/zsh/.zhistory
SAVEHITS=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

################
# Homebrew     #
################
export HOMEBREW_NO_INSTALL_CLEANUP=TRUE
export HOMEBREW_NO_AUTO_UPDATE=1
export PATH=/opt/homebrew/bin:$PATH
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
export PATH="/opt/homebrew/opt/pyqt@5/5.15.4_1/bin:$PATH"
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
export PATH="/opt/homebrew/opt/pyqt@5/5.15.4_1/bin:$PATH"

##################
#    bun         #
##################
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# Bun completions
[ -s "/Users/davidcarrijo/.bun/_bun" ] && source "/Users/davidcarrijo/.bun/_bun"

#####################
# COLORING          #
#####################
autoload colors && colors

#####################
# ALIASES           #
#####################
[[ -f $HOME/.config/.zsh/aliases.zsh ]] && source $HOME/.config/.zsh/aliases.zsh
[[ -f $HOME/.config/.zsh/functions.zsh ]] && source $HOME/.config/.zsh/functions.zsh
[[ -f $HOME/.config/.zsh/nvm.zsh ]] && source $HOME/.config/.zsh/nvm.zsh
alias pip=/usr/local/bin/pip3
alias explain="tlrc"

# ####################
# FANCY-CTRL-Z      #
# ####################
function fg-fzf() {
	job="$(jobs | fzf -0 -1 | sed -E 's/\[(.+)\].*/\1/')" && echo '' && fg %$job
}

function fancy-ctrl-z () {
	if [[ $#BUFFER -eq 0 ]]; then
		BUFFER=" fg-fzf"
		zle accept-line -w
	else
		zle push-input -w
		zle clear-screen -w
	fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

###########################
# >>> conda initialize >>>#
# #########################
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/davidcarrijo/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/davidcarrijo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/davidcarrijo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/davidcarrijo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

#<< pnpm >>
export PNPM_HOME="/Users/davidcarrijo/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# verify eza
if [ -x "$(command -v eza)" ]; then
    alias la="eza --long --all --group"
fi
# TheFuck Initialize
eval $(thefuck --alias)
export PATH=$PATH:${HOME}/.spicetify
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

###############################
#<<<Fuzzy Finder Initializer>>#
###############################
eval "$(fzf --zsh)" # a nice finder
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.config/.zsh/.p10k.zsh ]] || source $HOME/.config/.zsh/.p10k.zsh

#zoxide Initializer
eval "$(zoxide init zsh)" # a bttter cd


