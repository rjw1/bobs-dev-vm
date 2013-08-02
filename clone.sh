#!/bin/bash
mkdir -p ~vagrant/git
chown vagrant: ~vagrant/git
cd ~vagrant/git
if [ -e /git/dotfiles ]
then
  if [ ! -L ~vagrant/git/dotfiles ]
  then
    ln -s /git/dotfiles
  fi
else
  if [ -e ~vagrant/git/dotfiles ]
  then
    cd ~vagrant/git/dotfiles
    git pull
  else
    git clone git://github.com/rjw1/dotfiles
  fi
fi
if [ ! -L ~vagrant/.vimrc ]
then
  rm ~vagrant/.vimrc
  ln -s ~vagrant/git/dotfiles/_vimrc ~vagrant/.vimrc
fi
if [ ! -L ~vagrant/.gitconfig ]
then
  rm ~vagrant/.gitconfig
  ln -s ~vagrant/git/dotfiles/_gitconfig ~vagrant/.gitconfig
fi
