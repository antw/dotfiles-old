# rbenv
PATH="$HOME/.rbenv/bin:$PATH"; export PATH

# Default JRuby to 1.9 mode.
JRUBY_OPTS=--1.9

eval "$(rbenv init - 2>&-)"
