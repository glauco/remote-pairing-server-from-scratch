#!/bin/bash

mkdir -p "$HOME/usr/local"
wget --no-check-certificate https://github.com/vim/vim/archive/v8.0.0563.tar.gz -O vim.tar.gz
tar -xvzf vim.tar.gz
pushd vim-8.0.0563
./configure --prefix="$HOME/usr/local"
make
make install
popd
rm vim.tar.gz
rm -rf vim-8.0.0563
