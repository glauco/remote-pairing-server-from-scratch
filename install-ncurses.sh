#!/bin/bash

mkdir -p ~/usr/local
wget --no-check-certificate http://ftp.gnu.org/gnu/ncurses/ncurses-6.0.tar.gz -O ncurses.tar.gz
tar -xvzf ncurses.tar.gz
pushd ncurses-6.0
./configure --prefix="$HOME/usr/local"
make
make install
popd
rm ncurses.tar.gz
rm -fr ncurses-6.0
