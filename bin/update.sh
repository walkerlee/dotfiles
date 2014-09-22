#!/bin/bash

# update dotfiles repository
git pull
git submodule foreach --recursive git pull origin master

# update vim plugins
vim +PluginInstall +qall
vim +PluginClean! +qall
