#!/usr/bin/env bash


cd "$(dirname "${BASH_SOURCE}")"
git pull origin main

git submodule init
git submodule update --recursive

for submod in .pyenv .z.lua; do
    # rm -rf $HOME/$submod
    # ln -svf $PWD/$submod $HOME/$submod

    test -d $HOME/$submod || ln -svf $PWD/$submod $HOME/$submod
done

ln -svf $PWD/.xprofile $HOME/.xprofile

ln -svf $PWD/.config/fish $HOME/.config/fish
ln -svf $PWD/.config/pip $HOME/.config/pip
ln -svf $PWD/.config/zellij $HOME/.config/zellij
ln -svf $PWD/.config/wezterm $HOME/.config/wezterm

ln -svf $PWD/.global_gitconfig $HOME/.gitconfig

