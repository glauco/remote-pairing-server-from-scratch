#!/bin/bash

tmux -S "/tmp/$SESSION" attach -t "$SESSION"
