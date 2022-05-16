#!/usr/bin/env bash

RED="\033[0;31m"
YELLOW="\033[0;33m"
GREEN="\033[0;32m"
OCHRE="\033[38;5;95m"
BLUE="\033[0;34m"
WHITE="\033[0;37m"
RESET="\033[0m"

logn()  { printf -- "--> %s " "$*"; }
logk()  { echo -e "${GREEN}✔${RESET}"; }

mkdir -p $HOME/.vim/pack/plugins/start/

logn 'Installing NERD_tree vim plugin...'

  curl -o /tmp/NERD_tree.zip https://www.vim.org/scripts/download_script.php?src_id=23731
  unzip -q /tmp/NERD_tree.zip -d $HOME/.vim/pack/plugins/start/NERD_tree/
  rm /tmp/NERD_TREE.zip
  vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/NERD_tree/doc" -c -q

logk
