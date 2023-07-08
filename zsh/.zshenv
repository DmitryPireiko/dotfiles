#!/bin/bash

export XSECURELOCK_COMPOSITE_OBSCURER=0
export XSECURELOCK_NO_COMPOSITE=1
export EDITOR='nvim'
export LD_LIBRARY_PATH=/usr/local/lib
export JAVA_HOME=/usr/lib/jvm/java-20-openjdk
export BIN=$HOME/.local/bin

# JAVA fix
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit 

# .local/bin to PATH
[[ "$PATH" == *"$HOME/.local/bin"* ]] || PATH="$HOME/.local/bin:$PATH"

# Rust
. "$HOME/.cargo/env"
