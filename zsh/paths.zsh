# Node installs binaries to /usr/local/share/npm/bin
PATH="/usr/local/share/npm/bin:$PATH"; export PATH

# Node libraries...
NODE_PATH="/usr/local/lib/node" ; export NODE_PATH

# Python installs binaries to /usr/local/share/python.
PATH="/usr/local/share/python:$PATH";  export PATH

# User-specific binaries.

# Python installs binaries to /usr/local/share/python.
PATH="$HOME/bin:$PATH";  export PATH
