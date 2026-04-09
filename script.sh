#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

sudo apt update && sudo apt upgrade -y

# required for pc to be functional
sudo apt install curl git vim -y

# to allow SSH
sudo apt-get install openssh-server -y

# terminal config files
cat "${SCRIPT_DIR}/.vimrc" >> "${HOME}/.vimrc"
cat "${SCRIPT_DIR}/.inputrc" >> "${HOME}/.inputrc"
cat "${SCRIPT_DIR}/.bashrc" >> "${HOME}/.bashrc"
cat "${SCRIPT_DIR}/.gitconfig" >> "${HOME}/.gitconfig"
cat "${SCRIPT_DIR}/.gitignore" >> "${HOME}/.gitignore"

# other
sudo apt install fastfetch -y

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# ripgrep
curl -LO --output-dir "${HOME}/Downloads" https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep_14.1.1-1_amd64.deb
sudo dpkg -i "${HOME}/Downloads/ripgrep_14.1.1-1_amd64.deb"
rm "${HOME}/Downloads/ripgrep_14.1.1-1_amd64.deb"

# fd
curl -Lo "${HOME}/Downloads/fd_10.4.2_amd64.deb" https://github.com/sharkdp/fd/releases/download/v10.4.2/fd_10.4.2_amd64.deb
sudo dpkg -i "${HOME}/Downloads/fd_10.4.2_amd64.deb"
rm "${HOME}/Downloads/fd_10.4.2_amd64.deb"

# bind caps lock to escape
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape']"

# install claude code
curl -fsSL https://claude.ai/install.sh | bash
