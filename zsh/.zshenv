#!/bin/bash

export XSECURELOCK_COMPOSITE_OBSCURER=0
export XSECURELOCK_NO_COMPOSITE=1
export EDITOR='nvim'
export LD_LIBRARY_PATH=/usr/local/lib
export JAVA_HOME=/usr/lib/jvm/java-19-openjdk

# Python virtualenv module
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Repo
. "$HOME/.cargo/env"
