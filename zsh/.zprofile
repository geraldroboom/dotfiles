#!/bin/sh
#
# Profile file, runs on login. Environmental variables are set here.
unsetopt PROMPT_SP 2>/dev/null

# ~/ Clean-up:
export XDG_DESKTOP_DIR="$HOME/Desktop"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_MUSIC_DIR="$HOME/Media/Music"
export XDG_PICTURES_DIR="$HOME/Media/Pictures"
export XDG_VIDEOS_DIR="$HOME/Media/Videos"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
# export XDG_DATA_DIRS="$HOME"
# export XDG_CONFIG_DIRS="$HOME"
export XDG_CACHE_HOME="$HOME/.cache"
# export XDG_RUNTIME_DIRS="$HOME"

export HISTFILE="$XDG_STATE_HOME/zsh/history"
export ONEDRIVE="$HOME/Documents/onedrive"

# XDG_TEMPLATES_DIR="$HOME/"
# XDG_PUBLICSHARE_DIR="$HOME/Public"
