# enable vim binding
bindkey -v

# autocorrect
setopt correct
setopt correctall

# load plugs
autoload -Uz vcs_info
precmd () { vcs_info }
source /opt/homebrew/Cellar/zsh-autosuggestions/0.7.0/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# color guide > https://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
PS1="%B%F{195}%n%b%f %~ > "

# alias
alias c="clear"                         # clear screen
alias l="lsd"                           # list directory content
alias t="tree"                          # list dir content in tree format
alias v="nvim"                          # text editor
alias zrce="$EDITOR $HOME/.zshrc"       # edit zshrc

# custom script path
export PATH="$PATH:~/Scripts"

# exports
export EDITOR="nvim"
