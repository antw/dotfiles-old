#!/usr/bin/env sh

set -o errexit

declare -r dotfile_path="$( cd "$( dirname "$0" )" && pwd )"

dotfile() { ln -sfv "$dotfile_path/$2" "$HOME/$1"; }

dotfile '.vim'       'vim'
dotfile '.vimrc'     'vim/vimrc'
dotfile '.gvimrc'    'vim/gvimrc'

dotfile '.gitconfig' 'gitconfig'
dotfile '.gemrc'     'gemrc'
dotfile '.rspec'     'rspec'

mkdir -pv $HOME/.oh-my-zsh/custom
mkdir -pv $HOME/.oh-my-zsh/themes

dotfile '.oh-my-zsh/custom/alias.zsh'      'zsh/alias.zsh'
dotfile '.oh-my-zsh/custom/correction.zsh' 'zsh/correction.zsh'
dotfile '.oh-my-zsh/custom/paths.zsh'      'zsh/paths.zsh'
dotfile '.oh-my-zsh/custom/editor.zsh'     'zsh/editor.zsh'
dotfile '.oh-my-zsh/themes/antw.zsh-theme' 'zsh/antw.zsh-theme'

dotfile '.zshrc'  'zshrc'
dotfile '.zshenv' 'zshenv'
