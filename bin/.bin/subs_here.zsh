#!/bin/zsh

for file in `ls *.mkv`
do
  find "${@:-$PWD}" \
    -type f \
    -iname "$file:r.srt" \
    -print0 | xargs -0 -J % mv % "${@:-$PWD}"
done

