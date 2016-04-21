hname=`hostname -s`

if [ $DISPLAY = ":0.0" ] || [ $DISPLAY = ":0" ]
then
    if [ -f $HOME/config-rc/xkb/$hname ]
     then
        echo Loading XKB keymap for $hname
        xkbcomp -I$HOME/config-rc/xkb $HOME/config-rc/xkb/$hname $DISPLAY
    fi
else
    echo Loading standard XKB keymap.
    xkbcomp -I$HOME/config-rc/xkb $HOME/config-rc/xkb/pc.xkb $DISPLAY
fi
