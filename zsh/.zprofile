#!/bin/sh
#
# Profile file, runs on login. Environmental variables are set here.
unsetopt PROMPT_SP 2>/dev/null

# ~/ Clean-up:
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
# export XDG_DATA_DIRS="$HOME"
# export XDG_CONFIG_DIRS="$HOME"
export XDG_CACHE_HOME="$HOME/.cache"
# export XDG_RUNTIME_DIRS="$HOME"

export HISTFILE="$XDG_STATE_HOME/zsh/history"
export ONEDRIVE="$HOME/Documents/onedrive"

