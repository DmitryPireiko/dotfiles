#!/bin/bash

export XSECURELOCK_COMPOSITE_OBSCURER=0
export XSECURELOCK_NO_COMPOSITE=1
export EDITOR='nvim'
export LD_LIBRARY_PATH=/usr/local/lib
export JAVA_HOME=/usr/lib/jvm/java-20-openjdk

# .local/bin to PATH
[[ "$PATH" == *"$HOME/.local/bin"* ]] || PATH="$HOME/.local/bin:$PATH"

# Rust
. "$HOME/.cargo/env"
