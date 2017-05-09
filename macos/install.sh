#!/bin/sh

if [ ! "$(uname -s)" == "Darwin" ]; then
  exit 0

fi

echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

export ZSH=$HOME/.dotfiles

# Set macOS defaults
$ZSH/macos/set-defaults.sh

if test ! $(which brew); then
echo "› Installing homebrew"

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi
fi

# Upgrade homebrew
echo "› brew update"
brew update

# Run Homebrew through the Brewfile
echo "› brew bundle"
brew bundle

