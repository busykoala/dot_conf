source ~/dot_conf/zshell/autocompletion
source ~/dot_conf/zshell/env_variables
source ~/dot_conf/zshell/config
source ~/dot_conf/zshell/aliases

# Start Docker daemon automatically when logging in if not running.
RUNNING=`ps aux | grep dockerd | grep -v grep`
if [ -z "$RUNNING" ]; then
    sudo dockerd > /dev/null 2>&1 &
    disown
fi

set -o vi
