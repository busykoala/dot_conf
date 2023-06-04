source ~/dot_conf/zshell/env_variables
source ~/dot_conf/zshell/config
source ~/dot_conf/zshell/aliases
source ~/dot_conf/zshell/autocompletion

# Start Docker daemon automatically when logging in if not running.
RUNNING=`ps aux | grep dockerd | grep -v grep`
if [ -z "$RUNNING" ]; then
    sudo dockerd > /dev/null 2>&1 &
    disown
fi

ln -sf $HOME/dot_conf/alacritty.dark.yml $HOME/.alacritty.yml
sed -i "s/--light/--dark/" ~/dot_conf/gitconfig

set -o vi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
export PATH=$PATH:/usr/local/go/bin
