#!/bin/sh
INPUT="${1}"
echo $INPUT |\
  tr -cd '[:alnum:]' |\
  tr 'aAbBcC'   '2'  |\
  tr 'dDeEfF'   '3'  |\
  tr 'gGhHiI'   '4'  |\
  tr 'jJkKlL'   '5'  |\
  tr 'mMnNoO'   '6'  |\
  tr 'pPqQrRsS' '7'  |\
  tr 'tTuUvV'   '8'  |\
  tr 'wWxXyYzZ' '9'
