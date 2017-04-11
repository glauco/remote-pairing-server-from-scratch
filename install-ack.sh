#!/bin/bash

curl --insecure https://beyondgrep.com/ack-2.18-single-file > "$HOME/usr/local/bin/ack"
chmod 0755 "$HOME/usr/local/bin/ack"
