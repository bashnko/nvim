#!/usr/bin/env bash

raw_vimrc="https://raw.githubusercontent.com/h3yng/nvim/refs/heads/main/.vimrc"
path="$HOME/.vimrc"
curl $raw_vimrc >> $path 2>/dev/null
