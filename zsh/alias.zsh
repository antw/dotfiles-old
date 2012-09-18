alias te='terminitor'
alias pgstart='pg_ctl -D /usr/local/var/postgres -s -l /usr/local/var/postgres/run.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias giti='git'
alias irb='pry'

alias tvnamer="tvnamer --config='$HOME/.tvnamer'"
alias livestreamer='/usr/local/share/python/livestreamer --player /Applications/VLC.app/Contents/MacOS/VLC'
alias youtube-dl='youtube-dl --title --continue'

export LESS="-R -M -S --shift 5"

if [[ -f /etc/lsb-release ]] ; then
  # Ubuntu
  alias ls="ls --color --classify"
else
  # OS X.
  alias ls="ls -G -F"
fi
