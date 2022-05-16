#!/usr/bin/env bash

mkdir -p $HOME/.vim/pack/plugins/start/

# vim nerd-tree

curl -o /tmp/NERD_tree.zip https://www.vim.org/scripts/download_script.php?src_id=23731
unzip -q /tmp/NERD_tree.zip -d $HOME/.vim/pack/plugins/start/NERD_tree/
rm /tmp/NERD_TREE.zip
vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/NERD_tree/doc" -c -q

