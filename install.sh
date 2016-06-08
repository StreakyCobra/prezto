#!/bin/zsh

ln -s ${HOME}/dev/config/prezto/ ${HOME}/.zprezto

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

git submodule update --init --recursive
