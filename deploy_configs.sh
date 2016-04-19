#!/bin/bash

# bash rc
ln -s ~/config-rc/.bashrc ~/.bashrc

# ln -s ~/config-rc/.vimrc ~/.vimrc

# put the test file on the desktop
ln -s ~/config-rc/test.txt ~/Desktop/test.txt

# put in new xkb.conf
ln -s ~/config-rc/90-custom-kbd.conf /etc/X11/xorg.conf.d90-custom-kbd.conf


# run set_xmod
sh set_xmod.sh


