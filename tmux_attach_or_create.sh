#!/bin/bash
SESSION_HASH=($(pwd | md5sum))
SESSION="vscode-$SESSION_HASH"
tmux attach-session -d -t=$SESSION || tmux new-session -s $SESSION
