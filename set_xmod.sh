#!/bin/bash

clear_curent_Xmodmap_in_home()
{
if [ -e ~/.Xmodmap ]; then
	rm ~/.Xmodmap
	echo "I deleted old Xmodmap and I made a new link"
else
	echo "There was no old Xmondmap in home. I made a new link"
fi
}

echo "###########################################################"
echo "#                  pick your key bindings!                #"
echo "#        ***Warning: This Program Will Delete your***     #"
echo "#          ***Old .Xmodmap and link to a new one***       #"
echo "###########################################################"
echo "1) default"
echo "2) in_vm"
echo "3) stand_alone"

read -p "what key bindings would you like? (type 1, 2, or 3) " pick

ln -s ~/config-rc/.xinitrc ~/.xinitrc

if [ "$pick" = "1" ]; then
	echo "you picked default"
	clear_curent_Xmodmap_in_home
	ln -s ~/config-rc/xmodmap_default/.Xmodmap ~/.Xmodmap
	xmodmap xmodmap_default/.Xmodmap

elif [ "$pick" = "2" ]; then
	echo "you picked in_vm"
	clear_curent_Xmodmap_in_home
	ln -s ~/config-rc/xmodmap_in_vm/.Xmodmap ~/.Xmodmap
	xmodmap xmodmap_in_vm/.Xmodmap

elif [ "$pick" = "3" ]; then
	echo "you picked stand_alone"
	clear_curent_Xmodmap_in_home
	ln -s ~/config-rc/xmodmap_stand_alone/.Xmodmap ~/.Xmodmap
	xmodmap xmodmap_stand_alone/.Xmodmap
else
	echo "Sorry I can't do that."
fi