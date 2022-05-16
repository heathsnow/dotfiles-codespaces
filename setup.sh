#!/usr/bin/env bash

mkdir -p $HOME/.vim/pack/plugins/start/

# vim nerd-tree

curl -o /tmp/NERD_tree.zip https://www.vim.org/scripts/download_script.php?src_id=23731
unzip -q /tmp/NERD_tree.zip -d $HOME/.vim/pack/plugins/start/NERD_tree/
vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/NERD_tree/doc" -c -q

# vim airline

git clone https://github.com/vim-airline/vim-airline.git $HOME/.vim/pack/plugins/start/vim-airline
vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/vim-airline/doc" -c -q

# vim hcl

git clone git://github.com/jvirtanen/vim-hcl.git $HOME/.vim/pack/plugins/start/vim-hcl

# vim configuration

mkdir -p $HOME/.vimrc
grep -q -F 'syntax on' $HOME/.vimrc || echo 'syntax on' >> $HOME/.vimrc
grep -q -F 'set tabstop=2' $HOME/.vimrc || echo 'set tabstop=2' >> $HOME/.vimrc
grep -q -F 'set shiftwidth=2' $HOME/.vimrc || echo 'set shiftwidth=2' >> $HOME/.vimrc
grep -q -F 'set expandtab' $HOME/.vimrc || echo 'set expandtab' >> $HOME/.vimrc
