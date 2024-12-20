#!/usr/bin/env bash


cd "$(dirname "${BASH_SOURCE}")"
git pull origin main

git submodule init
git submodule update --recursive

for submod in .pyenv .z.lua; do
    rm -rf $HOME/$submod
    ln -svf $PWD/$submod $HOME/$submod
done

ln -svf $PWD/.xprofile $HOME/.xrofile
ln -svf $PWD/.config/fish $HOME/.config/fish
ln -svf $PWD/.config/pip $HOME/.config/pip

