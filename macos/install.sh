#!/bin/sh

if [ "$(uname -s)" == "Darwin" ]; then
  echo "› sudo softwareupdate -i -a"
  sudo softwareupdate -i -a
fi
