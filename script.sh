sudo apt update --y && sudo apt upgrade --y

# required for pc to be functional
sudo apt install curl git vim

# to allow SSH
sudo apt-get install openssh-server

# terminal config files
cat .vimrc >> "${HOME}/.vimrc"
cat .inputrc >> "${HOME}/.inputrc"
cat .bashrc >> "${HOME}/.bashrc"
cat .gitconfig >> "${HOME}/.gitconfig"
cat .gitignore >> "${HOME}/.gitignore"

# other
sudo apt install neofetch

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep_14.1.1-1_amd64.deb
sudo dpkg -i ripgrep_14.1.1-1_amd64.deb
sudo apt-get install ripgrep

# fd
wget --directory-prefix="${HOME}/Downloads" https://github.com/sharkdp/fd/releases/download/v10.4.2/fd_10.4.2_amd64.deb
sudo dpkg -i "${HOME}/Downloads/fd_10.4.2_amd64.deb"
