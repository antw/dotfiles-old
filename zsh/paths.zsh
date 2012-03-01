# Make /usr/local/bin available before /usr/bin.
PATH="/usr/local/bin:$PATH"; export PATH

# Node installs binaries to /usr/local/share/npm/bin
PATH="/usr/local/share/npm/bin:$PATH"; export PATH

# Node libraries...
NODE_PATH="/usr/local/lib/node_modules:/usr/local/lib/node" ; export NODE_PATH

# Python installs binaries to /usr/local/share/python.
PATH="/usr/local/share/python:$PATH";  export PATH
PYTHONPATH="/usr/local/lib/python2.7/site-packages"; export PYTHONPATH

# User-local binaries.
PATH="$HOME/bin:$PATH"; export PATH
