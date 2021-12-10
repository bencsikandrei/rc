# Load git autocomplete
autoload -Uz compinit && compinit

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# aliases
alias ll='ls -l'

setopt PROMPT_SUBST
# zsh prompt with error code and colors
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b (%F{green}${vcs_info_msg_0_:-"-"}%F{reset_color}) %# ' 

# add the pip3 local path to PATH
PATH=$PATH:/Users/andreilocal/Library/Python/3.8/bin

