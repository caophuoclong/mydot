#!/bin/bash
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.zsh/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.zsh/zsh-history-substring-search

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git config credential.helper store
git config --global user.email 'caophuoclong1@gmail.com'
git config --global user.name 'caophuoclong'

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

source ~/.zshrc

#sh createSymlink.sh
nvm install 16.18.1
nvm use 16.18.1

