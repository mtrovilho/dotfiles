#!/bin/sh

function usage() {
  echo "Show/hide hidden files on Finder"
  echo "usage: ${0} yes|no"
  echo "Note: you can also use y/n on/off 0/1"
}

function execute() {
  defaults write com.apple.finder AppleShowAllFiles -bool ${STATUS}
  killall Finder
}

case ${1} in
  yes|y|on|1) STATUS="true";  execute ;;
  no|n|off|0) STATUS="false"; execute ;;
  *) usage ;;
esac

