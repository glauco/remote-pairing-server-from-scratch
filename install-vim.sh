#!/bin/bash

mkdir -p ~/usr/local
wget --no-check-certificate https://github.com/vim/vim/archive/v8.0.0092.tar.gz -O vim.tar.gz
tar -xvzf vim.tar.gz
pushd vim-8.0.0092
./configure --prefix="$HOME/usr/local"
make
make install
popd
rm vim.tar.gz
rm -rf vim-8.0.0092
