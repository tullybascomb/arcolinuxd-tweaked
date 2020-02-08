#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "#################################################"
echo "If it feels like the downloads are too slow"
echo "Stop the installation with CTRL + C"
echo "and run the alias - mirror in the terminal"
echo "#################################################"

sudo pacman -Syyu --noconfirm
#installing displaymanager or login manager
sudo pacman -S --noconfirm --needed lightdm
sudo pacman -S --noconfirm --needed arcolinux-lightdm-gtk-greeter arcolinux-lightdm-gtk-greeter-settings
sudo pacman -S --noconfirm --needed arcolinux-wallpapers-git
#installing openbox desktop environment
sudo pacman -S openbox --noconfirm --needed
#Let's install some tiling window managers
#installing i3-gaps
if sudo pacman -Qi i3-wm &> /dev/null; then
    sudo pacman -R i3-wm --noconfirm
fi
sudo pacman -S --noconfirm --needed i3status
sudo pacman -S --noconfirm --needed i3-gaps
#installing bspwm
sudo pacman -S bspwm sxhkd --noconfirm --needed
#installing herbstluftwm
sudo pacman -S herbstluftwm --noconfirm --needed
#installing qtile wm
sudo pacman -S qtile --noconfirm --needed
#enabling displaymanager or login manager
sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target


#Remove anything you do not like from the installed applications

#sudo pacman -R ...
