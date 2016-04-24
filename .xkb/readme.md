Load the keyboard layout with:
xkbcomp -I$HOME/config-rc/xkb $HOME/config-rc/xkb/sekb.xkb $DISPLAY

#####################
To use these local settings, I have the following lines in my ~/.xsession script:

if [ -d $HOME/.xkb/keymap ]; then
  setxkbmap -types local -print | \
    sed -e '/xkb_symbols/s/"[[:space:]]/+local&/' > $HOME/.xkb/keymap/custom
  xkbcomp -w0 -I$HOME/.xkb -R$HOME/.xkb keymap/custom $DISPLAY
fi

#tools
evtest
xev

http://www.vinc17.org/unix/xkb.en.html
