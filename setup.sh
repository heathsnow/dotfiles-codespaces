#!/usr/bin/env bash

mkdir -p $HOME/.vim/pack/plugins/start/

# vim nerd-tree

curl -o /tmp/NERD_tree.zip https://www.vim.org/scripts/download_script.php?src_id=23731
unzip -q /tmp/NERD_tree.zip -d $HOME/.vim/pack/plugins/start/NERD_tree/
vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/NERD_tree/doc" -c -q

# vim airline

git clone https://github.com/vim-airline/vim-airline.git $HOME/.vim/pack/plugins/start/vim-airline
vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/vim-airline/doc" -c -q

# aws-cli

curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

