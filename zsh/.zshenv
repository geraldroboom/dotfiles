#!/bin/sh

# Add all directories in `~/.local/bin` to $PATH
export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"

typeset -U path PATH
path=(~/Programs/swww/target/release/swww $path)
path=(~/Programs/swww/target/release/swww-daemon $path)
path=(~/Programs/swww/target/release/ $path)
path=(~/Programs/swww/target/release $path)
export PATH
