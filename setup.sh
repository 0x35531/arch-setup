sudo pacman -Sy git qemu virt-manager flameshot neovim neofetch xclip kitty feh dmenu arandr thunderbird steam xorg-xrdb && 
cd /opt/ &&
sudo git clone https://aur.archlinux.org/paru.git &&
sudo chown -R $USER:$USER /opt/paru/ && 
cd /opt/paru &&
makepkg -si &&
paru -S spotify zen-browser-bin vesktop ttf-jetbrains-mono-git
