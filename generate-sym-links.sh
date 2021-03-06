#!/usr/bin/env bash
################################################################################
# File: generate-sym-links.sh
# Purpose: This script will replace the dot files in your home directory (~)
# with the dot files in this repo.
# 
# The current files are
# .bashrc:      bash configuration file
# .vimrc:       Vim configuration file
# .vim/:        Vim addon/plugin directory
# .gitconfig:   git configuration file
# .jshintrc:    jshint configuration file
#
################################################################################
SOURCE="${BASH_SOURCE[0]}"
SETUP=$1

if [[ -z $SETUP ]]
then
  SETUP="dev"
fi

DIR="$( dirname "$SOURCE" )"
while [ -h "$SOURCE" ]
do 
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
  DIR="$( cd -P "$( dirname "$SOURCE"  )" && pwd )"
done

DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )/$SETUP"

rm -rf $HOME/.bashrc; ln -s $DIR/.bashrc $HOME/.bashrc
rm -rf $HOME/.vimrc; ln -s $DIR/.vimrc $HOME/.vimrc
rm -rf $HOME/.vim; ln -s $DIR/.vim $HOME/.vim
rm -rf $HOME/.gitconfig; ln -s $DIR/.gitconfig $HOME/.gitconfig
rm -rf $HOME/.jshintrc; ln -s $DIR/.jshintrc $HOME/.jshintrc
rm -rf $HOME/.screenrc; ln -s $DIR/.screenrc $HOME/.screenrc

# Install vundle. (requires git)
rm -rf ~/.vim/bundle/vundle
echo "cloning vundle"
git clone -q git@github.com:gmarik/vundle.git ~/.vim/bundle/vundle

# Run bundler for vim
vim +BundleInstall +qall
