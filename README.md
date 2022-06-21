# Dot-Conf

This repository contains the unified dotfiles.

## Currently Configured:

- Shell (zshell)
- Terminal Emulator (Alacritty)
- Terminal Multiplexer (Tmux)
- Editor (NVim)
- Others: Git, SSH, Editorconfig, ...

## Keybindings

### NVim

- `,`: leader
- `ctrl + f`: Files
- `leader + b`: Buffers
- `leader + g`: Fulltext (ripgrep)
- `leader + t`: Tags (gutenberg tags)
- `leader + m`: Marks
- `leader + v`: vertical split
- `leader + h`: horizontal split
- `ctrl + h/j/k/l`: move between splits
- `ctrl + n`: Nerd tree toggle
- `ctrl + e`: Open nerd tree at current location
- coc-bindings:
  - `ctrl + j/k`: navigate in options
  - `gd, gy, gi, gr`: Go to def/type-def/impl/ref
  - `leader + ac`: show context actions
  - `leader + rn`: rename symbol

### Tmux

- `ctrl + a`: leader
- `leader + |`: vertical split
- `leader + -`: horizontal split
- `leader + r`: reload config

## How to setup

```
# add ssh key and clone this repo
git clone git@github.com:busykoala/dot_conf.git ~/dot_conf

# install packages (for according systems)
sudo apt-get install $(grep -vE "^\s*#" ./pkg_lists/apt_pkg_list  | tr "\n" " ")
sudo ./pkg_lists/pacman_pkg_install
choco install .\pkg_lists\choco_pkgs.config -y

# set zshell as default
chsh -s /usr/bin/zsh

# symlink all configs
cd ~/dot_conf && ./setup
```

## Dependencies

```
# pyenv (python version manager)
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# nodenv
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build

# yarn package manager (Ubuntu)
https://stackoverflow.com/a/47680012

# rust with rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
