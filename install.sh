#!/usr/bin/env bash

set -o errexit
set -o errtrace

declare -r dotfile_path="$( cd "$( dirname "$0" )" && pwd )"

dotfile() { ln -sfv "$dotfile_path/$2" "$HOME/$1"; }

dotfile '.vim'       'vim'
dotfile '.vimrc'     'vim/vimrc'
dotfile '.gvimrc'    'vim/gvimrc'

dotfile '.gitconfig' 'gitconfig'
dotfile '.gemrc'     'gemrc'
dotfile '.rspec'     'rspec'
