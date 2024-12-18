#!/usr/bin/env bash


cd "$(dirname "${BASH_SOURCE}")"
git pull origin main

git submodule init

ln -svf $PWD/.z.lua $HOME/.z.lua

