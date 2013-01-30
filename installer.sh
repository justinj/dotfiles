#!/bin/bash

FILES="irbrc aliases screenrc vimrc zshrc"

for FILE in $FILES; do
  DEST=~/.$FILE
  if [ -e $DEST ]; then
    echo File $DEST already exists, copying to $DEST.old
    cp $DEST $DEST.old
  fi
  curl https://raw.github.com/JustinJ/dotfiles/master/$FILE > $DEST
done
