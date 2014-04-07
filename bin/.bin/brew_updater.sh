#!/bin/sh
# update homebrew

# update
echo "$(date +"%Y-%m-%d %H:%M:%S") Homebrew Updater - updating…"
brew update
echo "$(date +"%Y-%m-%d %H:%M:%S") Homebrew Updater - updated"
echo

# upgrade
echo "$(date +"%Y-%m-%d %H:%M:%S") Homebrew Updater - upgrading…"
brew upgrade
echo "$(date +"%Y-%m-%d %H:%M:%S") Homebrew Updater - upgraded"
echo

# clean
echo "$(date +"%Y-%m-%d %H:%M:%S") Homebrew Updater - cleaning…"
brew cleanup
echo "$(date +"%Y-%m-%d %H:%M:%S") Homebrew Updater - cleaned"
echo
