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

#if [[ $(date +%H) -gt 6 && $(date +%H) -lt 18 ]]
#then
#    ln -sf $HOME/dot_conf/alacritty.light.yml $HOME/.alacritty.yml
#    sed -i "s/--dark/--light/" ~/dot_conf/gitconfig
#else
#    ln -sf $HOME/dot_conf/alacritty.dark.yml $HOME/.alacritty.yml
#    sed -i "s/--light/--dark/" ~/dot_conf/gitconfig
#fi

ln -sf $HOME/dot_conf/alacritty.dark.yml $HOME/.alacritty.yml
sed -i "s/--light/--dark/" ~/dot_conf/gitconfig


set -o vi
