export TERM="xterm-256color"
export ZSH=/usr/share/oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
HIST_STAMPS="dd.mm.yyyy"

plugins=(git catimg common-aliases vagrant web-search)

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/bin/core_perl"
export PATH=$JAVA_HOME/bin:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:~/.gem/ruby/2.6.0/bin:~/bin:$PATH
export PATH=$PATH:~/.config/composer/vendor/bin

source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8

export EDITOR='vim'

DEFAULT_USER='denis'

POWERLEVEL9K_MODE='nerdfont-complete'

#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=""
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ram history time)

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0C6'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0C7'

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_VCS_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

if [ $TERMINIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

export LANG=en_GB.UTF-8
export LC_MESSAGES="C"
export LC_ALL=en_GB.UTF-8
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"

eval "$(thefuck --alias)"

source $HOME/.zsh_aliases.zsh
source $HOME/.zsh_functions.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

ANTIGEN_MUTEX=false

source /usr/share/zsh/share/antigen.zsh
antigen bundle gerges/oh-my-zsh-jira-plus
antigen bundle gko/ssh-connect
antigen bundle wbingli/zsh-wakatime
antigen bundle "MichaelAquilina/zsh-you-should-use"
antigen bundle unixorn/git-extra-commands
antigen apply

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=250'
