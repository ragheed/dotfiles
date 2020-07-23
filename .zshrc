# Created by newuser for 5.3.1
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
#POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_MODE='nerdfont-complete'

#POWERLEVEL9K_BATTERY_CHARGING='yellow'
#POWERLEVEL9K_BATTERY_CHARGED='green'
#POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
#POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
#POWERLEVEL9K_BATTERY_LOW_COLOR='red'
#POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX='\uf0da'
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M}"

#context is username
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator host dir_writable dir aws vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs rbenv virtualenv command_execution_time battery time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs rbenv command_execution_time time)

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_from_right
POWERLEVEL9K_SHORTEN_DELIMITER=""

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
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle ssh-agent
antigen bundle popstas/zsh-command-time
antigen bundle MichaelAquilina/zsh-autoswitch-virtualenv
antigen bundle joel-porquet/zsh-dircolors-solarized.git

# Load the theme
#antigen theme agnoster
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell antigen that you're done
antigen apply

path+=("$HOME/.tfenv/bin")
path+=("$HOME/.rbenv/bin")
path+=("${KREW_ROOT:-$HOME/.krew}/bin")
export PATH

eval "$(rbenv init -)"
#alias aws-okta=". ~/.aws_okta/aws-okta"
#if [ $HOME/.local/bin/kubectl ]; then source <(kubectl completion zsh); fi
#
#alias h3=/usr/local/bin/tmp/helm
alias kc=kubectl
