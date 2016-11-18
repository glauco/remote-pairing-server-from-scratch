# Building a remote pairing server from scratch
A set of scripts for setting up a remote pairing server from scratch

## Installation
Run the following commands:

```sh
bash install-libevent.sh
bash install-ncurses.sh
bash install-tmux.sh
bash install-vim.sh
source setup-bashrc.sh
```

## Tmux
To share a session with someone you have to be connected to the same host. Then you can create a new session executing
```
SESSION=<session-name> bash tmux-create-session.sh
GROUP=<group> bash tmux-allow-guests.sh
```
To join a session execute
```
SESSION=<session-name> bash tmux-join-session.sh
```
