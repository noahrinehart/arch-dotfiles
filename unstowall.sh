#!/usr/bin/env sh

for d in */ ; do
  stow -D $d -t $HOME
done
