export TERM="xterm-256color"

export LANG="en_US.UTF-8"

export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:~/scripts



source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

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


#antigen bundle ryanoasis/nerd-fonts

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply





# User configuration



# Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'
source ~/powerlevel9k/powerlevel9k.zsh-theme

# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(date)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true








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