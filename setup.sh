#!/bin/bash

echo 'export LANGUAGE="en_US.UTF-8"' >> "$HOME/.bashrc"
echo 'export LANG="en_US.UTF-8"' >> "$HOME/.bashrc"
echo 'export PATH=$HOME/usr/local/bin:$PATH' >> "$HOME/.bashrc"
source "$HOME/.bashrc"

echo 'Installing libevent…'
bash install-libevent.sh

echo 'Installing ncurses…'
bash install-ncurses.sh

echo 'Installing tmux…'
bash install-tmux.sh

echo 'Installing vim…'
bash install-vim.sh

echo 'Installing ack…'
bash install-ack.sh
