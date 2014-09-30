#!/bin/bash

BASE_PATH=$(dirname $(cd $(dirname $0); pwd))
APPS_PATH=$BASE_PATH/apps

# remove dotfiles
rm -f  $HOME/{.bash_profile,.bashrc}                # bash
rm -rf $HOME/.config/fish/{config.fish,functions}   # fish
rm -f  $HOME/{.gitconfig,.gitignore_global}         # git
rm -f  $HOME/.hgignore_global                       # mercurial
rm -rf $HOME/.oh-my-fish                            # oh-my-fish
rm -rf $HOME/{.vim,.vimrc}                          # vim

# link dotfiles
ln -s $APPS_PATH/bash/bash_profile         $HOME/.bash_profile
ln -s $APPS_PATH/bash/bashrc               $HOME/.bashrc
ln -s $APPS_PATH/fish/config.fish          $HOME/.config/fish/config.fish
ln -s $APPS_PATH/fish/functions            $HOME/.config/fish/functions
ln -s $APPS_PATH/git/gitconfig             $HOME/.gitconfig
ln -s $APPS_PATH/git/gitignore_global      $HOME/.gitignore_global
ln -s $APPS_PATH/mercurial/hgignore_global $HOME/.hgignore_global
ln -s $APPS_PATH/oh-my-fish                $HOME/.oh-my-fish
ln -s $APPS_PATH/vim                       $HOME/.vim
ln -s $APPS_PATH/vim/vimrc                 $HOME/.vimrc

# init git submodule
git submodule update --init --recursive

# install vim plugins
vim +PluginInstall +qall

# compile YCM
cd $HOME/.vim/bundle/YouCompleteMe/
./install.sh --clang-completer
