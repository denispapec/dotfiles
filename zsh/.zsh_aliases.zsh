alias dotfiles='code ~/.dotfiles'
alias music='ncmpcpp'

# View HTTP traffic
alias sniff="sudo ngrep -d 'enp59s0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i enp59s0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Chmod -x
alias chmox='chmod -x'

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# sudo editors
alias svim='sudo vim'
alias snano='sudo nano'

# Go to git root
alias groot='cd `git rev-parse --show-toplevel`'

# Update git packages
alias pikaur-git='pikaur -Syu --devel --needed'