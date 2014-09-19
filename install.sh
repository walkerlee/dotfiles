#!/bin/bash

# remove dotfiles
rm -f  $HOME/{.bash_profile,.bashrc}                # bash
rm -rf $HOME/.config/fish/{config.fish,functions}   # fish
rm -f  $HOME/{.gitconfig,.gitignore_global}         # git
rm -f  $HOME/.hgignore_global                       # mercurial
rm -rf $HOME/.oh-my-fish                            # oh-my-fish
rm -rf $HOME/{.vim,.vimrc}                          # vim

# link dotfiles
ln -s $HOME/.dotfiles/bash/bash_profile $HOME/.bash_profile
ln -s $HOME/.dotfiles/bash/bashrc $HOME/.bashrc
ln -s $HOME/.dotfiles/fish/config.fish $HOME/.config/fish/config.fish
ln -s $HOME/.dotfiles/fish/functions $HOME/.config/fish/functions
ln -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig
ln -s $HOME/.dotfiles/git/gitignore_global $HOME/.gitignore_global
ln -s $HOME/.dotfiles/mercurial/hgignore_global $HOME/.hgignore_global
ln -s $HOME/.dotfiles/oh-my-fish $HOME/.oh-my-fish
ln -s $HOME/.dotfiles/vim $HOME/.vim
ln -s $HOME/.dotfiles/vim/vimrc $HOME/.vimrc
