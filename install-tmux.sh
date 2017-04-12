#!/bin/bash

mkdir -p "$HOME/usr/local"
wget --no-check-certificate https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz -O tmux.tar.gz
tar -xvzf tmux.tar.gz
pushd tmux-2.3
./configure --prefix="$HOME/usr/local" CFLAGS="-I$HOME/usr/local/include -I$HOME/usr/local/include/ncurses" LDFLAGS="-L$HOME/usr/local/lib -L$HOME/usr/local/include/ncurses -L$HOME/usr/local/include"
CPPFLAGS="-I$HOME/usr/local/include -I$HOME/usr/local/include/ncurses" LDFLAGS="-static -L$HOME/usr/local/include -L$HOME/usr/local/include/ncurses -L$HOME/usr/local/lib" make
CPPFLAGS="-I$HOME/usr/local/include -I$HOME/usr/local/include/ncurses" LDFLAGS="-static -L$HOME/usr/local/include -L$HOME/usr/local/include/ncurses -L$HOME/usr/local/lib" make install
popd
rm tmux.tar.gz
rm -fr tmux-2.3
