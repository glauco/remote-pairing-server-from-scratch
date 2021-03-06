#!/bin/bash

mkdir -p "$HOME/usr/local"
wget --no-check-certificate https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz -O libevent.tar.gz
tar -xvzf libevent.tar.gz
pushd libevent-2.1.8-stable
./configure --prefix="$HOME/usr/local" --disable-shared
make
make install
popd
rm libevent.tar.gz
rm -fr libevent-2.1.8-stable
