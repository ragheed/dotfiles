# Created by newuser for 5.3.1
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
#POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX='\uf0da'
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M}"

#context is username
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator host dir_writable dir aws vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs rbenv virtualenv command_execution_time battery time)

source /usr/local/bin/virtualenvwrapper.sh
source /usr/share/zsh-antigen/antigen.zsh

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


# Load the theme
#antigen theme agnoster
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell antigen that you're done
antigen apply

eval `dircolors ~/.dircolorsdb`

#path=("$HOME/.tfenv/bin" $path)
path+=("$HOME/.tfenv/bin")
path+=("$HOME/.rbenv/bin")
export PATH

eval "$(rbenv init -)"
alias aws-okta=". ~/.aws_okta/aws-okta"
if [ /usr/bin/kubectl ]; then source <(kubectl completion zsh); fi
