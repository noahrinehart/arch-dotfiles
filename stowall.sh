#!/usr/bin/env sh

for d in */ ; do
  stow $d -t $HOME
done
