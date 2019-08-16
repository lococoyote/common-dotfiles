export TERM="xterm-256color"

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

#export LANG="en_US.UTF-8"

export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:~/scripts


source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the theme.
antigen theme robbyrussell

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle chucknorris
antigen bundle extract
antigen bundle colored-man-pages

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle TamCore/autoupdate-zsh-plugin
antigen bundle VundleVim/vundle.vim


#antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen bundle ryanoasis/nerd-fonts



# Tell Antigen that you're done.
antigen apply




# General Settings
POWERLEVEL9K_MODE='nerdfont-complete'
source ~/powerlevel9k/powerlevel9k.zsh-theme
#source ~/powerlevel10k/powerlevel10k.zsh-theme

# Battery
POWERLEVEL9K_BATTERY_LOW_BACKGROUND="clear"
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND="clear"
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND="clear"
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND="black"
POWERLEVEL9K_BATTERY_LOW_FOREGROUND="249"
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="249"
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="249"
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="249"
POWERLEVEL9K_BATTERY_LOW_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_BATTERY_CHARGING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_BATTERY_CHARGED_VISUAL_IDENTIFIER_COLOR="green"
POWERLEVEL9K_BATTERY_DISCONNECTED_VISUAL_IDENTIFIER_COLOR="249"

# Context
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='028'
POWERLEVEL9K_STATUS_VERBOSE=false

# Dir
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_DIR_HOME_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_FOREGROUND="249"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="055"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="249"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="249"
POWERLEVEL9K_DIR_SHOW_WRITABLE="true"

#Load
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="clear"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="clear"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="clear"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="249"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="249"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="249"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"

# OS Icon
POWERLEVEL9K_OS_ICON_BACKGROUND="028"
POWERLEVEL9K_OS_ICON_FOREGROUND="255"

# RAM
POWERLEVEL9K_RAM_BACKGROUND="clear"
POWERLEVEL9K_RAM_FOREGROUND="249"
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)

# Status
POWERLEVEL9K_STATUS_OK_BACKGROUND="black"
POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="black"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"

# Time
POWERLEVEL9K_TIME_FORMAT="%D{\uF017 %H:%M:%S \UF073 %m/%d/%Y}"
POWERLEVEL9K_TIME_BACKGROUND="clear"
POWERLEVEL9K_TIME_FOREGROUND="249"

# VCS
POWERLEVEL9K_SHOW_CHANGESET="true"
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked)

# History
POWERLEVEL9K_HISTORY_FOREGROUND='232'
POWERLEVEL9K_HISTORY_BACKGROUND='056'




# Prompts Elements
# Visual customization of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%{%F{249}%}\u250f"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%F{249}%}\u2517%{%F{default}%}❯ "
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{255}%K{245}%} $user_symbol%{%b%f%k%F{245}%} %{%f%}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{255}%K{245}%} $user_symbol%{%b%f%k%F{245}%} %{%f%}"
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('status' 'dir' 'vcs')
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('load' 'ram_joined' 'battery' 'time' 'os_icon')
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('history' 'time' 'os_icon')



#Personal section

#alias comm='cd /Volumes/OddsNEnds/common_files'
#alias rfile='sshfs loco@192.168.178.84:/run/media/loco/ext/common_files /Volumes/OddsNEnds/common_files'
alias ciscoc='printf 'duebel\ny3t1_h@z_c0ld_f33T\ny' | /opt/cisco/anyconnect/bin/vpn -s connect https://vpn-emea.stratus.com'
alias ciscod='/opt/cisco/anyconnect/bin/vpn disconnect'


eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias fuck)

clear

#fortune | cowsay -f tux | lolcat


neofetch --size 15%










