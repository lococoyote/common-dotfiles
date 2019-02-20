export TERM="xterm-256color"

export LANG="en_US.UTF-8"

export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:~/scripts

#load Powerlevel9k from Antigen
#POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

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





# User configuration

#Add WiFi Indicator (mac version)

zsh_wifi_signal(){
    local signal=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep CtlRSSI | awk '{print $2}')
    local color='%F{yellow}'
    [[ $signal -gt -60 ]] && color='%F{green}'
    [[ $signal -lt -70 ]] && color='%F{red}'
    echo -n "%{$color%}\uf424 %{%f%}"
}

POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="black"


#Add WiFi Indicator (linux version)

#zsh_wifi_signal(){
#   local signal=$(nmcli device wifi | grep yes | awk '{print $8}')
#  local color='%F{yellow}'
#    [[ $signal -gt 75 ]] && color='%F{green}'
#    [[ $signal -lt 50 ]] && color='%F{red}'
#    echo -n "%{$color%}\uf230  $signal%{%f%}" # \uf230 is 
#}

#POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context time battery dir vcs virtualenv custom_wifi_signal)



# Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'
source ~/powerlevel9k/powerlevel9k.zsh-theme

# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh vcs dir newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(date history custom_wifi_signal os_icon)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_HISTORY_FOREGROUND='228'
POWERLEVEL9K_HISTORY_BACKGROUND='238'
POWERLEVEL9K_DATE_FOREGROUND='055'
POWERLEVEL9K_DATE_BACKGROUND='252'



export PATH="/usr/local/opt/ruby/bin:$PATH"



function title_background_color {
  echo -ne "\033]6;1;bg;red;brightness;$ITERM2_TITLE_BACKGROUND_RED\a"
  echo -ne "\033]6;1;bg;green;brightness;$ITERM2_TITLE_BACKGROUND_GREEN\a"
  echo -ne "\033]6;1;bg;blue;brightness;$ITERM2_TITLE_BACKGROUND_BLUE\a"
}
ITERM2_TITLE_BACKGROUND_RED="18"
ITERM2_TITLE_BACKGROUND_GREEN="26"
ITERM2_TITLE_BACKGROUND_BLUE="33"
title_background_color
# Set iTerm2 tab title text
function title_text {
    echo -ne "\033]0;"$*"\007"
}
title_text LocoCoyote
