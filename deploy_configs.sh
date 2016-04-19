#!/bin/bash

### Make symbolic links from config-rc to ~ ###
ln -s ~/config-rc/.bashrc ~/.bashrc
# ln -s ~/config-rc/.vimrc ~/.vimrc
ln -s ~/config-rc/test.txt ~/Desktop/test.txt
ln -s ~/config-rc/.gitconfig ~/.gitconfig

# run set_xmodgit 
sh set_xmod.sh


