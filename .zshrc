# Created by newuser for 5.3.1
source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle autojump
antigen bundle docker
antigen bundle common-aliases
antigen bundle compleat
antigen bundle extract
antigen bundle git-extras
antigen bundle git-flow
antigen bundle web-search
antigen bundle histroy
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search 
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle ssh-agent


# Load the theme
antigen theme agnoster

# Tell antigen that you're done
antigen apply

eval `dircolors /home/me/.dircolorsdb`
eval "$(rbenv init -)"

export PATH="$HOME/.rbenv/bin:$HOME/.tfenv/bin:$PATH"
alias aws-okta=". aws-okta"

source /usr/share/autoenv/activate.sh
