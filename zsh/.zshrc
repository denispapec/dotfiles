export TERM="xterm-256color"
export ZSH=/home/denis/.oh-my-zsh
export PATH=$PATH:/home/denis/.gem/ruby/2.3.0/bin
export PATH=$PATH:/usr/bin/core_perl

ZSH_THEME="powerlevel9k/powerlevel9k"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git catimg common-aliases vagrant web-search)

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
fi

# export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/dsa_id"

DEFAULT_USER='denis'

vminstall() {
  wget https://files.magerun.net/n98-magerun.phar;
  chmod +x n98-magerun.phar
  ./n98-magerun.phar
}
