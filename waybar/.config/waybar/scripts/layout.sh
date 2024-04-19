#!/bin/bash

layout=$(hyprctl devices -j | jq '.keyboards[] | select(.name == "ite-tech.-inc.-ite-device(8910)-keyboard")|.active_keymap')

if [ "$layout" == '"Russian"' ]; then
  echo "RU"
elif [ "$layout" == '"English (US)"' ]; then
  echo "US"
fi
