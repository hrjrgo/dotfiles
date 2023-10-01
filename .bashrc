#    _               _              
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
# 
# by Stephan Raabe (2023)
# -----------------------------------------------------
# ~/.bashrc
# -----------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias c='clear'
alias nf='neofetch'
alias pf='pfetch'
alias ls='exa -al'
alias shutdown='systemctl poweroff'
alias v='nvim'
alias ts='~/dotfiles/scripts/snapshot.sh'
alias matrix='cmatrix'
alias wifi='nmtui'
alias od='~/private/onedrive.sh'
alias rw='~/dotfiles/waybar/reload.sh'
alias winclass="xprop | grep 'CLASS'"
alias dot="cd ~/dotfiles"

# -----------------------------------------------------
# Window Managers
# -----------------------------------------------------


# -----------------------------------------------------
# GIT
# -----------------------------------------------------

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"

# -----------------------------------------------------
# SCRIPTS
# -----------------------------------------------------

alias w='~/dotfiles/scripts/updatewal.sh'
alias gr='python ~/dotfiles/scripts/growthrate.py'
alias ChatGPT='python ~/mychatgpt/mychatgpt.py'
alias chat='python ~/mychatgpt/mychatgpt.py'
alias ascii='~/dotfiles/scripts/figlet.sh'

# -----------------------------------------------------
# EDIT CONFIG FILES
# -----------------------------------------------------

alias confb='nvim ~/dotfiles/.bashrc'

# -----------------------------------------------------
# EDIT NOTES
# -----------------------------------------------------

alias notes='vim ~/notes.txt'

# -----------------------------------------------------
# SYSTEM
# -----------------------------------------------------

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias setkb='setxkbmap se;echo "Keyboard set back to de."'

# -----------------------------------------------------
# SCREEN RESOLUTINS
# -----------------------------------------------------



export PATH="/usr/lib/ccache/bin/:$PATH"

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init bash)"

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
cat ~/.cache/wal/sequences

# -----------------------------------------------------
# PFETCH
# -----------------------------------------------------
echo ""
pfetch



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# pnpm
export PNPM_HOME="/home/mo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end