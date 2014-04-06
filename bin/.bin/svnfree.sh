#!/bin/sh
############
# SVN Free #
############

function ConfirmOrExit() {
  while true
  do
    echo "are you sure (yes/no)?"
    read CONFIRM

    case $CONFIRM in
      y|Y|YES|yes|Yes) break ;;
      n|N|no|NO|No)
        echo "Aborting..."
        exit
        ;;
      *) echo "Please enter only y or n"
    esac
  done
  echo "Removing .svn folders..."
}

echo "\nThis will remove all .svn folders from ${1}"
ConfirmOrExit
# TODO: check if .svn folders exists
rm -rf `find ${1} -type d -name .svn`
