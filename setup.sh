# start by installing needed packages aswell as paru as an AUR helper
sudo pacman -Sy git qemu virt-manager flameshot neovim neofetch xclip kitty feh dmenu arandr thunderbird steam xorg-xrdb && 
cd /opt/ &&
sudo git clone https://aur.archlinux.org/paru.git &&
sudo chown -R $USER:$USER /opt/paru/ && 
cd /opt/paru &&
makepkg -si &&
paru -S spotify zen-browser-bin vesktop ttf-jetbrains-mono-git &&
# time to clone, compile and install dwm 
cd /usr/local/src/ &&
sudo chown -R $USER:$USER . &&
git clone https://github.com/0x35531/dwm &&
cd /usr/local/src/dwm/ &&
make && sudo make install &&
# add entry in display manager for dwm
sudo echo $'[Desktop Entry]
Encoding=UTF-8
Name=dwm
Comment=Dynamic window manager
Exec=dwm
Icon=dwm
Type=XSession' > /usr/share/xsessions/dwm.desktop &&
# clone, compile and install slstatus
cd /usr/local/src/ && 
git clone https://github.com/0x35531/slstatus &&
cd /usr/local/src/slstatus &&
make && make install &&
# make .dwm folder and autostart.sh
mkdir $HOME/.dwm && 
echo $'sh /home/nikolai/.screenlayout/screens.sh &
feh --bg-fill /home/nikolai/Pictures/wp.jpg & 
xclip &
slstatus' > $HOME/.dwm/autostart.sh &&
sudo chmod +x $HOME/.dwm/autostart.sh && 
# make screen layout folder and configuration
sudo mkdir $HOME/.screenlayout &&
echo $'#!/bin/sh
xrandr --output DisplayPort-0 --primary --mode 2560x1440 --pos 1080x0 --rotate normal --rate 240.00 --output DisplayPort-1 --mode 1920x1080 --pos 0x151 --rotate left --rate 240.00 --output DisplayPort-2 --off --output HDMI-A-0 --off --output HDMI-A-1-1 --off' > $HOME/.screenlayout/screens.sh &&
sudo chmod +x $HOME/.screenlayout/screens.sh

